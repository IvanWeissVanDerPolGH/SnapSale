import 'package:flutter/material.dart';

class InvoiceScreen extends StatelessWidget {
  const InvoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Invoice')),
      body: const Center(child: Text('Invoice Screen')),
      // Add invoice generation and viewing functionality here
    );
  }
}
