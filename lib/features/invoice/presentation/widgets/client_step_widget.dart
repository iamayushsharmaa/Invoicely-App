import 'package:flutter/material.dart';

import 'invoice_dark_text_field.dart';

class ClientStepWidget extends StatelessWidget {
  final String? clientName;
  final String? clientEmail;

  final TextEditingController clientNameController;
  final TextEditingController clientEmailController;
  final TextEditingController clientAddressController;

  final VoidCallback onSelectClient;
  final VoidCallback onClearClient;

  final ValueChanged<String> onClientNameChanged;
  final ValueChanged<String> onClientEmailChanged;
  final ValueChanged<String> onClientAddressChanged;

  const ClientStepWidget({
    super.key,
    required this.clientName,
    required this.clientEmail,
    required this.clientNameController,
    required this.clientEmailController,
    required this.clientAddressController,
    required this.onSelectClient,
    required this.onClearClient,
    required this.onClientNameChanged,
    required this.onClientEmailChanged,
    required this.onClientAddressChanged,
  });

  @override
  Widget build(BuildContext context) {
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
                onPressed: onClearClient,
              ),
            ),
          ),

        ElevatedButton.icon(
          onPressed: onSelectClient,
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

        InvoiceDarkTextField(
          controller: clientNameController,
          hint: "Client name",
          onChanged: onClientNameChanged,
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

        InvoiceDarkTextField(
          controller: clientEmailController,
          hint: "Client email",
          onChanged: onClientEmailChanged,
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

        InvoiceDarkTextField(
          controller: clientAddressController,
          hint: "Client address",
          onChanged: onClientAddressChanged,
        ),
      ],
    );
  }
}
