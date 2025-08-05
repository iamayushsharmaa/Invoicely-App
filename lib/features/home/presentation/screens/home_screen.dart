import 'package:flutter/material.dart';

import '../widgets/search_text_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final _searchController = TextEditingController();

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
          'Hello Ayush',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        centerTitle: false,
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const SizedBox(height: 10,),
            SizedBox(
                height: 60,
                width: double.infinity,
                child: SearchTextField(
                  controller: _searchController,
                  hintText: 'Search for items...',
                  onChanged: (value) {
                    print('Search query: $value');
                    // Implement your search logic here
                  },
                  onSubmitted: (value) {
                    print('Search submitted: $value');
                    // Implement action on search submission
                  },
                ),
            )
          ],
        ),
      ),
    );
  }
}
