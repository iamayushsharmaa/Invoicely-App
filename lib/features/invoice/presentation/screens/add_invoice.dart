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

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();

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
            icon: const Icon(Icons.check, color: Colors.white),
            onPressed: () {
              // Save invoice logic
            },
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
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        _buildDarkTextField(
          _nameController,
          "Enter client name",
          (val) => clientName = val,
        ),
        const SizedBox(height: 12),
        _buildDarkTextField(
          _emailController,
          "Enter client email",
          (val) => clientEmail = val,
        ),
      ],
    );
  }

  Widget _buildInvoiceDetailsStep() {
    return Column(
      children: [
        TextField(
          decoration: const InputDecoration(labelText: "Invoice Number"),
        ),
        TextField(
          decoration: const InputDecoration(labelText: "Invoice Date"),
          readOnly: true,
          onTap: () async {
            final date = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2020),
              lastDate: DateTime(2030),
            );
            if (date != null) {
              print(date.toString());
            }
          },
        ),
      ],
    );
  }

  Widget _buildItemsStep() {
    return Column(
      children: const [
        Text("Items section here..."),
        // Will add dynamic items UI later
      ],
    );
  }

  Widget _buildReviewStep() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Client: ${clientName ?? 'Not selected'}"),
        Text("Email: ${clientEmail ?? ''}"),
        // Show other invoice details
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
    return Row(
      children: [
        ElevatedButton(
          onPressed: details.onStepContinue,
          child: Text(_currentStep == 3 ? "Save" : "Next"),
        ),
        if (_currentStep > 0)
          TextButton(
            onPressed: details.onStepCancel,
            child: const Text("Back"),
          ),
      ],
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
                    _nameController.text = clientName!;
                    _emailController.text = clientEmail!;
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
