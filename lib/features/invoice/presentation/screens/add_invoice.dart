import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AddInvoiceScreen extends StatefulWidget {
  const AddInvoiceScreen({super.key});

  @override
  State<AddInvoiceScreen> createState() => _AddInvoiceScreenState();
}

class _AddInvoiceScreenState extends State<AddInvoiceScreen> {
  int _currentStep = 0;
  List<Map<String, dynamic>> _items = [];

  List<Map<String, String>> dbClients = [
    {"name": "John Doe", "email": "john@example.com"},
    {"name": "Sarah Smith", "email": "sarah@example.com"},
    {"name": "Michael Johnson", "email": "mike@example.com"},
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
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
          controlsBuilder: _buildControls,
          steps: [
            Step(
              title: const SizedBox.shrink(),
              isActive: _currentStep >= 0,
              content: _buildClientStep(),
            ),
            Step(
              title: const SizedBox.shrink(),
              isActive: _currentStep >= 1,
              content: _buildInvoiceDetailsStep(),
            ),
            Step(
              title: const SizedBox.shrink(),
              isActive: _currentStep >= 2,
              content: _buildItemsStep(),
            ),
            Step(
              title: const SizedBox.shrink(),
              isActive: _currentStep >= 3,
              content: _buildReviewStep(),
            ),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      // prevents default back arrow
      leading: IconButton(
        icon: const Icon(Icons.close, color: Colors.white),
        onPressed: () => context.pop(), // GoRouter pop
      ),
      title: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Create Invoice',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 4),
          Text(
            'Step ${_currentStep + 1} of 4',
            style: const TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ],
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(
            Icons.check,
            color: _currentStep == 3 ? Colors.white : Colors.grey.shade800,
          ),
          onPressed: () {}, //_currentStep == 3 //? _saveInvoice : null,
        ),
      ],
    );
  }

  Widget _buildDarkTextField(
    TextEditingController controller,
    String hint,
    Function(String)? onChanged, {
    bool readOnly = false,
  }) {
    return TextField(
      controller: controller,
      readOnly: readOnly,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: Colors.white54),
        filled: true,
        fillColor: Colors.grey.shade900,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 14,
        ),
      ),
      onChanged: onChanged,
    );
  }

  Widget _buildClientStep() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (clientName != null)
          Card(
            color: Colors.blue.shade600,
            child: ListTile(
              title: Text(clientName!),
              subtitle: Text(clientEmail ?? ""),
              trailing: IconButton(
                icon: const Icon(Icons.clear),
                onPressed: () => setState(() {
                  clientName = null;
                  clientEmail = null;
                }),
              ),
            ),
          ),
        ElevatedButton.icon(
          onPressed: _showClientBottomSheet,
          icon: const Icon(Icons.person_search),
          label: const Text("Select from existing clients"),
        ),
        const Divider(height: 20, color: Colors.white24),
        const Text(
          "Or add new client:",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        const SizedBox(height: 10),
        const Text(
          "Client Name",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 6),
        _buildDarkTextField(
          _clientNameController,
          "Client name",
          (val) => clientName = val,
        ),
        const SizedBox(height: 10),
        const Text(
          "Client Email",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 6),
        _buildDarkTextField(
          _clientAddController,
          "Client email",
          (val) => clientEmail = val,
        ),
        const SizedBox(height: 10),
        const Text(
          "Client Address",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 6),
        _buildDarkTextField(
          _clientEmailController,
          "Client address",
          (val) => clientEmail = val,
        ),
      ],
    );
  }

  Widget _buildInvoiceDetailsStep() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Text(
          'Invoice Number',
          style: TextStyle(
            fontSize: 12,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 5),
        _buildDarkTextField(
          _invoiceNumberController,
          "Invoice number",
          (onClick) {},
        ),
        const SizedBox(height: 10),
        Text(
          'Invoice Date',
          style: TextStyle(
            fontSize: 12,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 6),
        _buildDarkTextField(_invoiceDateController, "Invoice Date", (
          onClick,
        ) async {
          final date = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2020),
            lastDate: DateTime(2030),
          );
          if (date != null) {
            print(date.toString());
          }
        }),
        const SizedBox(height: 10),

        Text(
          'Due Date',
          style: TextStyle(
            fontSize: 12,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 6),
        _buildDarkTextField(_invoiceDateController, "Due Date", (
          onClick,
        ) async {
          final dueDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2020),
            lastDate: DateTime(2030),
          );
          if (dueDate != null) {
            invoiceDueDate = dueDate;
            print(dueDate.toString());
          }
        }),
      ],
    );
  }

  Widget _buildItemsStep() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 2),
        Text(
          'Tax (%)',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 8),
        _buildDarkTextField(_taxController, "Enter Tax %", (p0) {}),
        const SizedBox(height: 12),
        Text(
          'Discount (%)',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 8),
        _buildDarkTextField(_taxController, "Enter Discount %", (p0) {}),
        const SizedBox(height: 12),
        SizedBox(
          height: 50,
          width: double.infinity,
          child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            icon: const Icon(Icons.add),
            label: const Text("Add Item"),
            onPressed: _showAddItemBottomSheet,
          ),
        ),
        const SizedBox(height: 20),
        if (_items.isEmpty)
          const Text(
            "No items added yet",
            style: TextStyle(color: Colors.grey),
          ),
      ],
    );
  }

  Widget _buildReviewStep() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey.shade900,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              textNumberRow('Invoice Number', "0022"),
              _buildDivider(),
              textNumberRow('Invoice Date', "23 Jan 2025"),
              _buildDivider(),
              textNumberRow('Due Date', "30 Jan 2025"),
              _buildDivider(),
              textNumberRow('Amount', "\$1,200"),
            ],
          ),
        ),
        const SizedBox(height: 14),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey.shade900,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'To',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              textNumberRow('Client Name', clientName ?? ""),
              _buildDivider(),
              textNumberRow('Client Email', clientEmail ?? ""),
              _buildDivider(),
              textNumberRow('Client Address', clientAddress ?? ""),
            ],
          ),
        ),
        const SizedBox(height: 12),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey.shade900,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Items',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget textNumberRow(String text, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        Text(value, style: TextStyle(fontSize: 15, color: Colors.white)),
      ],
    );
  }

  Widget _buildDivider() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 2),
        height: 1,
        color: Colors.grey.shade800,
      ),
    );
  }

  void _handleNext() {
    if (_currentStep < 3) {
      setState(() => _currentStep++);
    } else {
      print("Saving invoice...");
    }
  }

  void _handleBack() {
    if (_currentStep > 0) {
      setState(() => _currentStep--);
    }
  }

  Widget _buildControls(BuildContext context, ControlsDetails details) {
    final isLastStep = _currentStep == 3;
    return Padding(
      padding: const EdgeInsets.only(top: 20), // top spacing
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (_currentStep > 0)
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.blue),
                foregroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: details.onStepCancel,
              child: const Text("Back", style: TextStyle(fontSize: 16)),
            )
          else
            const SizedBox(width: 88),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.black,
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              elevation: 0,
            ),
            onPressed: details.onStepContinue,
            child: Text(
              isLastStep ? "Save" : "Next",
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }

  void _showClientBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (_) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Select Client",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const Divider(height: 1),
            ...dbClients.map((client) {
              return ListTile(
                title: Text(client["name"]!),
                subtitle: Text(client["email"]!),
                onTap: () {
                  setState(() {
                    clientName = client["name"];
                    clientEmail = client["email"];
                    clientEmail = client["address"];

                    _clientNameController.text = clientName!;
                    _clientEmailController.text = clientEmail!;
                    _clientAddController.text = clientAddress!;
                  });
                  Navigator.pop(context);
                },
              );
            }),
            const SizedBox(height: 10),
          ],
        );
      },
    );
  }

  void _showAddItemBottomSheet() {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController priceController = TextEditingController();
    final TextEditingController quantityController = TextEditingController();
    final TextEditingController taxController = TextEditingController();

    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.grey.shade900,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      isScrollControlled: true,
      builder: (_) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Add Item",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 16),

                _buildBottomSheetTextField(nameController, "Item Name"),
                _buildBottomSheetTextField(
                  priceController,
                  "Price",
                  isNumber: true,
                ),
                _buildBottomSheetTextField(
                  quantityController,
                  "Quantity",
                  isNumber: true,
                ),
                _buildBottomSheetTextField(
                  taxController,
                  "Tax %",
                  isNumber: true,
                ),

                const SizedBox(height: 20),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: 16,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      _items.add({
                        "name": nameController.text,
                        "price": double.tryParse(priceController.text) ?? 0,
                        "quantity": int.tryParse(quantityController.text) ?? 1,
                      });
                    });
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Save Item",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildBottomSheetTextField(
    TextEditingController controller,
    String hint, {
    bool isNumber = false,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: TextField(
        controller: controller,
        keyboardType: isNumber ? TextInputType.number : TextInputType.text,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Colors.grey.shade800,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 14,
          ),
        ),
      ),
    );
  }
}
