import 'package:flutter/material.dart';

class SaleListScreen extends StatelessWidget {
  const SaleListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sales')),
      body: const Center(child: Text('Sale List Screen')),
      // Add sales list and navigation to edit screen here
    );
  }
}
