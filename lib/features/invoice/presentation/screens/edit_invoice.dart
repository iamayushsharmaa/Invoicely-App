import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:invoice/features/invoice/domain/entities/invoice_enitity.dart';

import '../../../../core/constants/currency_constants.dart';
import '../../domain/entities/create_invoice_params.dart';
import '../../domain/entities/invoice_item_params.dart';
import '../../domain/usecases/update_invoice_usecase.dart';
import '../bloc/invoice_bloc.dart';
import '../invoice_item_ui_model.dart';
import '../widgets/add_invoice_item_bottom_sheet.dart';
import '../widgets/invoice_dark_text_field.dart';

class EditInvoiceScreen extends StatefulWidget {
  final InvoiceEntity invoice;

  const EditInvoiceScreen({super.key, required this.invoice});

  @override
  State<EditInvoiceScreen> createState() => _EditInvoiceScreenState();
}

class _EditInvoiceScreenState extends State<EditInvoiceScreen> {
  late List<InvoiceItemUiModel> _items;
  late String _selectedStatus;
  late String _selectedCurrency;
  late DateTime _dueDate;
  late DateTime _invoiceDate;

  final _dueDateController = TextEditingController();
  final _discountController = TextEditingController();

  bool _isUpdating = false;

  @override
  void initState() {
    super.initState();

    _selectedStatus = widget.invoice.status;
    _selectedCurrency = widget.invoice.currency;
    _dueDate = widget.invoice.dueDate;
    _invoiceDate = widget.invoice.invoiceDate;
    _dueDateController.text = _formatDate(widget.invoice.dueDate);
    _discountController.text = widget.invoice.discount.toString();

    _items = widget.invoice.items
        .map(
          (item) => InvoiceItemUiModel(
            name: item.description,
            price: item.price,
            quantity: item.quantity,
            tax: 0, // InvoiceItemEntity has no tax field, default to 0
          ),
        )
        .toList();
  }

  @override
  void dispose() {
    _dueDateController.dispose();
    _discountController.dispose();
    super.dispose();
  }

  // ─── Calculations ─────────────────────────────────────────────────────────

  double get _subtotal => _items.fold(0, (sum, item) => sum + item.subtotal);

  double get _taxAmount =>
      _items.fold(0, (sum, item) => sum + ((item.subtotal * item.tax) / 100));

  double get _discountAmount {
    final discount = double.tryParse(_discountController.text) ?? 0;
    return (_subtotal * discount) / 100;
  }

  double get _grandTotal => _subtotal + _taxAmount - _discountAmount;

  // ─── Validation ───────────────────────────────────────────────────────────

  String? _validate() {
    if (_items.isEmpty) return 'Add at least one item';
    return null;
  }

  // ─── Submit ───────────────────────────────────────────────────────────────

  void _onUpdate() {
    final error = _validate();
    if (error != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(error),
          backgroundColor: Colors.red,
          behavior: SnackBarBehavior.floating,
        ),
      );
      return;
    }

    setState(() => _isUpdating = true);

    context.read<InvoiceBloc>().add(
      UpdateInvoice(
        UpdateInvoiceParams(
          invoiceId: widget.invoice.id,
          data: CreateInvoiceParams(
            clientId: widget.invoice.clientId,
            invoiceNumber: widget.invoice.invoiceNumber,
            invoiceDate: _invoiceDate,
            dueDate: _dueDate,
            billingFrom: widget.invoice.billingFrom,
            billingTo: widget.invoice.billingTo,
            notes: widget.invoice.notes,
            status: _selectedStatus,
            discount: double.tryParse(_discountController.text) ?? 0,
            tax: _taxAmount,
            currency: _selectedCurrency,
            logoUrl: widget.invoice.logoUrl,
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
          ),
        ),
      ),
    );
  }

  void _handleStateChanges(BuildContext context, InvoiceState state) {
    state.whenOrNull(
      actionSuccess: (message) {
        setState(() => _isUpdating = false);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(message),
            backgroundColor: Colors.green,
            behavior: SnackBarBehavior.floating,
          ),
        );
        context.pop();
      },
      actionError: (message) {
        setState(() => _isUpdating = false);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(message),
            backgroundColor: Colors.red,
            behavior: SnackBarBehavior.floating,
          ),
        );
      },
    );
  }

  // ─── Date Picker ──────────────────────────────────────────────────────────

  Future<void> _selectDueDate() async {
    final date = await showDatePicker(
      context: context,
      initialDate: _dueDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );
    if (date != null && mounted) {
      setState(() {
        _dueDate = date;
        _dueDateController.text = _formatDate(date);
      });
    }
  }

  // ─── Bottom Sheet ─────────────────────────────────────────────────────────

  void _showAddItemBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (_) {
        return AddInvoiceItemBottomSheet(
          onSave: (item) {
            setState(() => _items.add(item));
          },
        );
      },
    );
  }

  // ─── Helpers ──────────────────────────────────────────────────────────────

  String _formatDate(DateTime date) {
    const months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ];
    return '${date.day} ${months[date.month - 1]} ${date.year}';
  }

  // ─── Build ────────────────────────────────────────────────────────────────

  @override
  Widget build(BuildContext context) {
    return BlocListener<InvoiceBloc, InvoiceState>(
      listenWhen: (previous, current) =>
          current is InvoiceActionSuccess || current is InvoiceActionError,
      listener: _handleStateChanges,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'Edit Invoice',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ─── Invoice Info (read only) ────────────────────────────────
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _infoRow('Invoice #', widget.invoice.invoiceNumber),
                    const SizedBox(height: 8),
                    _infoRow('Client', widget.invoice.billingTo),
                    const SizedBox(height: 8),
                    _infoRow('Invoice Date', _formatDate(_invoiceDate)),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // ─── Due Date ────────────────────────────────────────────────
              const Text(
                'Due Date',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              const SizedBox(height: 6),
              InvoiceDarkTextField(
                controller: _dueDateController,
                hint: 'Due Date',
                readOnly: true,
                onTap: _selectDueDate,
              ),

              const SizedBox(height: 16),

              // ─── Status ──────────────────────────────────────────────────
              const Text(
                'Status',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              const SizedBox(height: 6),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: _selectedStatus,
                    isExpanded: true,
                    dropdownColor: Colors.grey.shade900,
                    style: const TextStyle(color: Colors.white, fontSize: 14),
                    items: ['PAID', 'UNPAID', 'OVERDUE', 'DRAFT']
                        .map((s) => DropdownMenuItem(value: s, child: Text(s)))
                        .toList(),
                    onChanged: (value) {
                      setState(
                        () => _selectedStatus = value ?? _selectedStatus,
                      );
                    },
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // ─── Currency ────────────────────────────────────────────────
              const Text(
                'Currency',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              const SizedBox(height: 6),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: _selectedCurrency,
                    isExpanded: true,
                    dropdownColor: Colors.grey.shade900,
                    style: const TextStyle(color: Colors.white, fontSize: 14),
                    items: CurrencyConstants.supported
                        .map((c) => DropdownMenuItem(value: c, child: Text(c)))
                        .toList(),
                    onChanged: (value) {
                      setState(
                        () => _selectedCurrency = value ?? _selectedCurrency,
                      );
                    },
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // ─── Discount ────────────────────────────────────────────────
              const Text(
                'Discount %',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              const SizedBox(height: 6),
              InvoiceDarkTextField(
                controller: _discountController,
                hint: 'Discount %',
                isNumber: true,
              ),

              const SizedBox(height: 20),

              // ─── Items ───────────────────────────────────────────────────
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Items',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextButton.icon(
                    onPressed: _showAddItemBottomSheet,
                    icon: const Icon(Icons.add, color: Colors.white),
                    label: const Text(
                      'Add Item',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              _items.isEmpty
                  ? const Center(
                      child: Text(
                        'No items added',
                        style: TextStyle(color: Colors.grey),
                      ),
                    )
                  : ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: _items.length,
                      separatorBuilder: (_, __) => const SizedBox(height: 8),
                      itemBuilder: (context, index) {
                        final item = _items[index];
                        return Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade900,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item.name,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    '${item.quantity} x \$${item.price.toStringAsFixed(2)}',
                                    style: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    '\$${item.total.toStringAsFixed(2)}',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() => _items.removeAt(index));
                                    },
                                    child: const Icon(
                                      Icons.delete_outline,
                                      color: Colors.red,
                                      size: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),

              const SizedBox(height: 20),

              // ─── Totals ──────────────────────────────────────────────────
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    _totalRow(
                      'Subtotal',
                      '$_selectedCurrency ${_subtotal.toStringAsFixed(2)}',
                    ),
                    const SizedBox(height: 8),
                    _totalRow(
                      'Tax',
                      '$_selectedCurrency ${_taxAmount.toStringAsFixed(2)}',
                    ),
                    const SizedBox(height: 8),
                    _totalRow(
                      'Discount',
                      '-$_selectedCurrency ${_discountAmount.toStringAsFixed(2)}',
                    ),
                    const Divider(color: Colors.grey),
                    _totalRow(
                      'Total',
                      '$_selectedCurrency ${_grandTotal.toStringAsFixed(2)}',
                      isBold: true,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // ─── Update Button ───────────────────────────────────────────
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _isUpdating ? null : _onUpdate,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF3F51B5),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: _isUpdating
                      ? const SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(
                            color: Colors.white,
                            strokeWidth: 2,
                          ),
                        )
                      : const Text(
                          'Update',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  // ─── Helper Widgets ───────────────────────────────────────────────────────

  Widget _infoRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(color: Colors.grey.shade400, fontSize: 14),
        ),
        Text(value, style: const TextStyle(color: Colors.white, fontSize: 14)),
      ],
    );
  }

  Widget _totalRow(String label, String value, {bool isBold = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            color: isBold ? Colors.white : Colors.grey.shade400,
            fontSize: isBold ? 16 : 14,
            fontWeight: isBold ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            color: Colors.white,
            fontSize: isBold ? 16 : 14,
            fontWeight: isBold ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
