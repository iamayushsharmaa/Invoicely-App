import 'package:flutter/material.dart';
import 'package:invoice/features/invoice/domain/entities/invoice_enitity.dart';

class EditInvoice extends StatefulWidget {
  final InvoiceEntity invoice;

  const EditInvoice({super.key, required this.invoice});

  @override
  State<EditInvoice> createState() => _EditInvoiceState();
}

class _EditInvoiceState extends State<EditInvoice> {
  late TextEditingController invoiceNumberController;
  late TextEditingController dateController;
  late TextEditingController amountController;
  String selectedStatus = 'Paid'; // Default value

  final List<String> statusOptions = ['Paid', 'Unpaid', 'Overdue'];

  @override
  void initState() {
    super.initState();
    invoiceNumberController = TextEditingController(
      text: widget.invoice.invoiceNumber,
    );
    dateController = TextEditingController(
      text: widget.invoice.invoiceDate.toString(),
    );
    amountController = TextEditingController(
      text: widget.invoice.totalAmount.toString(),
    );
    selectedStatus = widget.invoice.status.toString();
  }

  @override
  void dispose() {
    invoiceNumberController.dispose();
    dateController.dispose();
    amountController.dispose();
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    DateTime initialDate = DateTime.now();
    try {
      initialDate = DateTime.parse(
        widget.invoice.invoiceDate.toString(),
      ); // Attempt to parse
    } catch (_) {}
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        dateController.text =
            "${picked.year}-${picked.month.toString().padLeft(2, '0')}-${picked.day.toString().padLeft(2, '0')}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Edit Invoice"),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _buildTextField(
              "Invoice Number",
              invoiceNumberController,
              enabled: false,
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () => _selectDate(context),
              child: AbsorbPointer(
                child: _buildTextField("Date", dateController),
              ),
            ),
            const SizedBox(height: 16),
            _buildTextField("Amount", amountController),
            const SizedBox(height: 16),
            _buildDropdown("Status", selectedStatus),
            const SizedBox(height: 30),

            /// Update Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  String updatedInvoiceNumber = invoiceNumberController.text;
                  String updatedDate = dateController.text;
                  String updatedAmount = amountController.text;
                  String updatedStatus = selectedStatus;

                  print("Updated Invoice:");
                  print("Invoice #: $updatedInvoiceNumber");
                  print("Date: $updatedDate");
                  print("Amount: $updatedAmount");
                  print("Status: $updatedStatus");

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Invoice Updated")),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF3F51B5),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  "Update",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(
    String label,
    TextEditingController controller, {
    bool enabled = true,
  }) {
    return TextField(
      controller: controller,
      enabled: enabled,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.grey.shade400),
        filled: true,
        fillColor: Colors.grey.shade900,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  Widget _buildDropdown(String label, String value) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(12),
      ),
      child: DropdownButton<String>(
        value: value,
        dropdownColor: Colors.grey.shade900,
        isExpanded: true,
        underline: const SizedBox(),
        icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
        style: const TextStyle(color: Colors.white, fontSize: 16),
        onChanged: (String? newValue) {
          setState(() {
            selectedStatus = newValue!;
          });
        },
        items: statusOptions
            .map(
              (status) =>
                  DropdownMenuItem<String>(value: status, child: Text(status)),
            )
            .toList(),
      ),
    );
  }
}
