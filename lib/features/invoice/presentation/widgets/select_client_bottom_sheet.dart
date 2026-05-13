import 'package:flutter/material.dart';

class SelectClientBottomSheet extends StatelessWidget {
  final List<Map<String, String>> clients;
  final Function(Map<String, String>) onClientSelected;

  const SelectClientBottomSheet({
    super.key,
    required this.clients,
    required this.onClientSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),

      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              "Select Client",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),

          const Divider(height: 1),

          ...clients.map(
            (client) => ListTile(
              title: Text(client["name"] ?? ""),
              subtitle: Text(client["email"] ?? ""),

              onTap: () {
                onClientSelected(client);
                Navigator.pop(context);
              },
            ),
          ),

          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
