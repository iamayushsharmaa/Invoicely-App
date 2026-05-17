import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:invoice/core/utils/app_snackbar.dart';
import 'package:invoice/features/invoice/presentation/bloc/invoice_bloc.dart';

import '../../../client/domain/entities/client_enitity.dart';
import '../../../client/presentation/bloc/client_bloc.dart';
import '../../../user/presentation/bloc/user_bloc.dart';
import '../../domain/entities/create_invoice_params.dart';
import '../../domain/entities/invoice_item_params.dart';
import '../../domain/entities/new_client_params.dart';
import '../../domain/validators/invoice_form_validators.dart';
import '../invoice_item_ui_model.dart';
import '../widgets/add_invoice_app_bar.dart';
import '../widgets/add_invoice_item_bottom_sheet.dart';
import '../widgets/client_step_widget.dart';
import '../widgets/invoice_details_step_widget.dart';
import '../widgets/invoice_items_step_widget.dart';
import '../widgets/invoice_review_step_widget.dart';
import '../widgets/invoice_step_controls.dart';
import '../widgets/select_client_bottom_sheet.dart';

class AddInvoiceScreen extends StatefulWidget {
  const AddInvoiceScreen({super.key});

  @override
  State<AddInvoiceScreen> createState() => _AddInvoiceScreenState();
}

class _AddInvoiceScreenState extends State<AddInvoiceScreen> {
  int _currentStep = 0;
  List<InvoiceItemUiModel> _items = [];

  String? clientName;
  String? clientEmail;
  String? clientAddress;
  String? selectedClientId;
  DateTime? invoiceDate;
  DateTime? invoiceDueDate;
  String _billingFrom = "Invoicely";
  String _selectedCurrency = 'USD';

  final _clientNameController = TextEditingController();
  final _clientAddController = TextEditingController();
  final _clientEmailController = TextEditingController();
  final _invoiceNumberController = TextEditingController();
  final _invoiceDateController = TextEditingController();
  final _invoiceDueDateController = TextEditingController();
  final _discountController = TextEditingController();

  @override
  void initState() {
    super.initState();
    final userState = context.read<UserBloc>().state;
    userState.whenOrNull(
      profileLoaded: (user) {
        _billingFrom = user.name;
      },
    );
  }

  @override
  void dispose() {
    _clientNameController.dispose();
    _clientAddController.dispose();
    _clientEmailController.dispose();

    _invoiceNumberController.dispose();
    _invoiceDateController.dispose();
    _invoiceDueDateController.dispose();
    _discountController.dispose();

    super.dispose();
  }

  double get _subtotal {
    return _items.fold(0, (sum, item) => sum + item.subtotal);
  }

  double get _taxAmount {
    return _items.fold(
      0,
      (sum, item) => sum + ((item.subtotal * item.tax) / 100),
    );
  }

  double get _discountAmount {
    final discount = double.tryParse(_discountController.text) ?? 0;

    return (_subtotal * discount) / 100;
  }

  double get _grandTotal {
    return _subtotal + _taxAmount - _discountAmount;
  }

  CreateInvoiceParams _buildInvoiceParams() {
    final isExistingClient = selectedClientId != null;

    return CreateInvoiceParams(
      clientId: isExistingClient ? selectedClientId : null,
      newClient: isExistingClient
          ? null
          : NewClientParams(
              name: clientName ?? "",
              email: clientEmail ?? "",
              address: clientAddress,
            ),
      invoiceNumber: _invoiceNumberController.text.trim(),
      invoiceDate: invoiceDate ?? DateTime.now(),
      dueDate: invoiceDueDate ?? DateTime.now(),
      billingFrom: _billingFrom,
      billingTo: clientName ?? "",
      notes: null,
      status: "PENDING",
      discount: double.tryParse(_discountController.text) ?? 0,
      tax: _taxAmount,
      currency: _selectedCurrency,
      logoUrl: null,
      items: _items
          .map(
            (item) => InvoiceItemParams(
              description: item.name,
              quantity: item.quantity,
              price: item.price,
              tax: item.tax,
              total: item.total,
            ),
          )
          .toList(),
      subTotal: _subtotal,
      totalAmount: _grandTotal,
    );
  }

  String? _validateCurrentStep() {
    switch (_currentStep) {
      case 0:
        return InvoiceFormValidator.validateClientStep(
          clientName: clientName,
          clientEmail: clientEmail,
        );
      case 1:
        return InvoiceFormValidator.validateInvoiceDetailsStep(
          invoiceNumber: _invoiceNumberController.text,
          invoiceDate: invoiceDate,
          dueDate: invoiceDueDate,
        );
      case 2:
        return InvoiceFormValidator.validateItemsStep(items: _items);
      default:
        return null;
    }
  }

  void _showValidationError(String message) {
    AppSnackbar.error(context, message);
  }

  void _handleNext() {
    final error = _validateCurrentStep();
    if (error != null) {
      _showValidationError(error);
      return;
    }
    if (_currentStep < 3) {
      setState(() => _currentStep++);
    } else {
      _submitInvoice();
    }
  }

  void _handleBack() {
    if (_currentStep > 0) {
      setState(() => _currentStep--);
    }
  }

  void _submitInvoice() {
    final currentState = context.read<InvoiceBloc>().state;
    if (currentState is InvoiceActionLoading) return;

    context.read<InvoiceBloc>().add(CreateInvoice(_buildInvoiceParams()));
  }

  void _handleStateChanges(BuildContext context, InvoiceState state) {
    state.whenOrNull(
      actionSuccess: (message) {
        AppSnackbar.success(context, message);
        context.pop();
      },
      actionError: (message) {
        AppSnackbar.error(context, message);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<InvoiceBloc, InvoiceState>(
      listenWhen: (previous, current) =>
          current is InvoiceActionSuccess || current is InvoiceActionError,
      listener: _handleStateChanges,
      buildWhen: (previous, current) =>
          current is InvoiceActionLoading ||
          current is InvoiceActionSuccess ||
          current is InvoiceActionError ||
          previous is InvoiceActionLoading,
      builder: (context, state) {
        final isLoading = state is InvoiceActionLoading;

        return Scaffold(
          appBar: AddInvoiceAppBar(
            currentStep: _currentStep,
            onClose: () => context.pop(),
            onSave: _currentStep == 3 && !isLoading ? _submitInvoice : null,
          ),
          body: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Colors.black,
              colorScheme: ColorScheme.light(
                primary: Colors.blue,
                onSurface: Colors.white,
              ),
            ),
            child: Stack(
              children: [
                Stepper(
                  type: StepperType.horizontal,
                  currentStep: _currentStep,
                  onStepContinue: isLoading ? null : _handleNext,
                  onStepCancel: isLoading ? null : _handleBack,
                  controlsBuilder: (context, details) {
                    return InvoiceStepControls(
                      currentStep: _currentStep,
                      onBack: details.onStepCancel,
                      onNext: details.onStepContinue,
                    );
                  },
                  steps: _buildSteps(),
                ),
                if (isLoading) const _LoadingOverlay(),
              ],
            ),
          ),
        );
      },
    );
  }

  List<Step> _buildSteps() {
    return [
      Step(
        title: const SizedBox.shrink(),
        isActive: _currentStep >= 0,
        content: ClientStepWidget(
          clientName: clientName,
          clientEmail: clientEmail,
          clientNameController: _clientNameController,
          clientEmailController: _clientEmailController,
          clientAddressController: _clientAddController,
          onSelectClient: _showClientBottomSheet,
          onClearClient: () {
            setState(() {
              clientName = null;
              clientEmail = null;
              clientAddress = null;
              selectedClientId = null;
            });
          },
          onClientNameChanged: (value) => clientName = value,
          onClientEmailChanged: (value) => clientEmail = value,
          onClientAddressChanged: (value) => clientAddress = value,
        ),
      ),
      Step(
        title: const SizedBox.shrink(),
        isActive: _currentStep >= 1,
        content: InvoiceDetailsStepWidget(
          invoiceNumberController: _invoiceNumberController,
          invoiceDateController: _invoiceDateController,
          dueDateController: _invoiceDueDateController,
          onInvoiceDateTap: _selectInvoiceDate,
          onDueDateTap: _selectDueDate,
          selectedCurrency: _selectedCurrency,
          // add
          onCurrencyChanged: (value) {
            setState(() => _selectedCurrency = value ?? 'USD');
          },
        ),
      ),
      Step(
        title: const SizedBox.shrink(),
        isActive: _currentStep >= 2,
        content: InvoiceItemsStepWidget(
          discountController: _discountController,
          onAddItem: _showAddItemBottomSheet,
          items: _items,
          onDeleteItem: (index) {
            setState(() => _items.removeAt(index));
          },
        ),
      ),
      Step(
        title: const SizedBox.shrink(),
        isActive: _currentStep >= 3,
        content: InvoiceReviewStepWidget(
          invoiceNumber: _invoiceNumberController.text,
          invoiceDate: _invoiceDateController.text,
          dueDate: _invoiceDueDateController.text,
          clientName: clientName ?? "",
          clientEmail: clientEmail ?? "",
          clientAddress: clientAddress ?? "",
          items: _items,
          subtotal: '\$${_subtotal.toStringAsFixed(2)}',
          tax: '\$${_taxAmount.toStringAsFixed(2)}',
          discount: '\$${_discountAmount.toStringAsFixed(2)}',
          total: '\$${_grandTotal.toStringAsFixed(2)}',
        ),
      ),
    ];
  }

  void _showAddItemBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,

      builder: (_) {
        return AddInvoiceItemBottomSheet(
          onSave: (item) {
            setState(() {
              _items.add(item);
            });
          },
        );
      },
    );
  }

  void _showClientBottomSheet() {
    final clientState = context.read<ClientBloc>().state;

    clientState.when(
      initial: () {
        context.read<ClientBloc>().add(const ClientEvent.getAllClients());
      },
      loading: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Loading clients...'),
            behavior: SnackBarBehavior.floating,
          ),
        );
      },
      error: (message) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(message),
            backgroundColor: Colors.red,
            behavior: SnackBarBehavior.floating,
          ),
        );
      },
      loaded: (clients) {
        showModalBottomSheet(
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
          ),
          builder: (_) {
            return SelectClientBottomSheet(
              clients: clients,
              onClientSelected: (client) {
                setState(() {
                  selectedClientId = client.id;
                  clientName = client.name;
                  clientEmail = client.email;
                  clientAddress = client.address;
                  _clientNameController.text = client.name;
                  _clientEmailController.text = client.email;
                  _clientAddController.text = client.address;
                });
              },
            );
          },
        );
      },
      clientLoaded: (ClientEntity client) {},
    );
  }

  Future<void> _selectInvoiceDate() async {
    final date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );

    if (date != null) {
      invoiceDate = date;

      _invoiceDateController.text = '${date.day}/${date.month}/${date.year}';

      setState(() {});
    }
  }

  Future<void> _selectDueDate() async {
    final date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );

    if (date != null) {
      invoiceDueDate = date;

      _invoiceDueDateController.text = '${date.day}/${date.month}/${date.year}';

      setState(() {});
    }
  }
}

class _LoadingOverlay extends StatelessWidget {
  const _LoadingOverlay();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.4),
      child: const Center(
        child: CircularProgressIndicator(color: Colors.white),
      ),
    );
  }
}
