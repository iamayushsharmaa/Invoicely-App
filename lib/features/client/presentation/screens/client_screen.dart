import 'package:flutter/material.dart';

import '../../../home/presentation/widgets/search_text_field.dart';

class ClientScreen extends StatefulWidget {
  const ClientScreen({super.key});

  @override
  State<ClientScreen> createState() => _ClientScreenState();
}

class _ClientScreenState extends State<ClientScreen> {
  TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Clients',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const SizedBox(height: 10),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: SearchTextField(
                controller: _searchController,
                hintText: 'Search here',
                onChanged: (value) {},
                onSubmitted: (value) {},
              ),
            ),
            const SizedBox(height: 16),
            Text("here you all clients"),
          ],
        ),
      ),
    );
  }
}
