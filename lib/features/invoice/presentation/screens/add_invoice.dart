import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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

  final List<Map<String, String>> dbClients = [
    {"name": "John Doe", "email": "john@example.com", "address": "New York"},
    {
      "name": "Sarah Smith",
      "email": "sarah@example.com",
      "address": "California",
    },
    {
      "name": "Michael Johnson",
      "email": "mike@example.com",
      "address": "Chicago",
    },
  ];

  String? clientName;
  String? clientEmail;
  String? clientAddress;
  DateTime? invoiceDate;
  DateTime? invoiceDueDate;

  final _clientNameController = TextEditingController();
  final _clientAddController = TextEditingController();
  final _clientEmailController = TextEditingController();
  final _invoiceNumberController = TextEditingController();
  final _invoiceDateController = TextEditingController();
  final _invoiceDueDateController = TextEditingController();
  final _taxController = TextEditingController();
  final _discountController = TextEditingController();

  @override
  void dispose() {
    _clientNameController.dispose();
    _clientAddController.dispose();
    _clientEmailController.dispose();

    _invoiceNumberController.dispose();
    _invoiceDateController.dispose();
    _invoiceDueDateController.dispose();

    _taxController.dispose();
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AddInvoiceAppBar(
        currentStep: _currentStep,
        onClose: () => context.pop(),
        onSave: () {
          // later bloc create invoice
        },
      ),
      body: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.black, // Stepper background
          colorScheme: ColorScheme.light(
            primary: Colors.blue,
            onSurface: Colors.white,
          ),
        ),
        child: Stepper(
          type: StepperType.horizontal,
          currentStep: _currentStep,
          onStepContinue: _handleNext,
          onStepCancel: _handleBack,
          controlsBuilder: (context, details) {
            return InvoiceStepControls(
              currentStep: _currentStep,
              onBack: details.onStepCancel,
              onNext: details.onStepContinue,
            );
          },
          steps: [
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
                  });
                },
                onClientNameChanged: (value) {
                  clientName = value;
                },
                onClientEmailChanged: (value) {
                  clientEmail = value;
                },
                onClientAddressChanged: (value) {
                  clientAddress = value;
                },
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
              ),
            ),
            Step(
              title: const SizedBox.shrink(),
              isActive: _currentStep >= 2,
              content: InvoiceItemsStepWidget(
                taxController: _taxController,
                discountController: _discountController,
                onAddItem: _showAddItemBottomSheet,
                items: _items,
                onDeleteItem: (index) {
                  setState(() {
                    _items.removeAt(index);
                  });
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
          ],
        ),
      ),
    );
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
    showModalBottomSheet(
      context: context,

      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),

      builder: (_) {
        return SelectClientBottomSheet(
          clients: dbClients,

          onClientSelected: (client) {
            setState(() {
              clientName = client["name"];
              clientEmail = client["email"];
              clientAddress = client["address"];
              _clientNameController.text = clientName ?? "";
              _clientEmailController.text = clientEmail ?? "";
              _clientAddController.text = clientAddress ?? "";
            });
          },
        );
      },
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

  void _handleNext() {
    if (_currentStep < 3) {
      setState(() {
        _currentStep++;
      });
    } else {
      // later create invoice bloc event
    }
  }

  void _handleBack() {
    if (_currentStep > 0) {
      setState(() {
        _currentStep--;
      });
    }
  }
}
