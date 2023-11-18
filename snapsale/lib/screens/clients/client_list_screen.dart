import 'package:flutter/material.dart';

class ClientListScreen extends StatelessWidget {
  const ClientListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Clients')),
      body: const Center(child: Text('Client List Screen')),
      // Add client list and navigation to edit screen here
    );
  }
}
