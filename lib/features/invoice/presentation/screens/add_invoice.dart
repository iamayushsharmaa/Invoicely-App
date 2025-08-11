import 'package:flutter/material.dart';

class AddInvoiceScreen extends StatefulWidget {
  const AddInvoiceScreen({super.key});

  @override
  State<AddInvoiceScreen> createState() => _AddInvoiceScreenState();
}

class _AddInvoiceScreenState extends State<AddInvoiceScreen> {
  int _currentStep = 0;

  // Mock DB Clients
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
  final _invoiceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
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

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.close, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
          Column(
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
          IconButton(
            icon: Icon(
              Icons.check,
              color: _currentStep == 3 ? Colors.tealAccent : Colors.grey,
            ),
            onPressed: () => _currentStep == 3, //? //_saveInvoice : null,
          ),
        ],
      ),
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
    return Column(children: const [Text("Items section here...")]);
  }

  Widget _buildReviewStep() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Client: ${clientName ?? 'Not selected'}"),
        Text("Email: ${clientEmail ?? ''}"),
      ],
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
}
