import 'package:flutter/material.dart';

import '../../../client/domain/entities/client_enitity.dart';

class SelectClientBottomSheet extends StatelessWidget {
  final List<ClientEntity> clients;
  final Function(ClientEntity) onClientSelected;

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

          ListView.builder(
            shrinkWrap: true,
            itemCount: clients.length,
            itemBuilder: (context, index) {
              final client = clients[index];
              return ListTile(
                title: Text(client.name),
                subtitle: Text(client.email),
                onTap: () {
                  onClientSelected(client);
                  Navigator.pop(context);
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
