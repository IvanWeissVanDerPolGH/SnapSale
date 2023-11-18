import 'package:flutter/material.dart';
import 'package:snapsale/widgets/action_card.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sales Management Dashboard'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ActionCard(
              title: 'Categories',
              description: 'Manage your product categories',
              icon: Icons.category,
              onTap: () => context.go('/categoryList'),
            ),
            ActionCard(
              title: 'Products',
              description: 'Manage your products',
              icon: Icons.production_quantity_limits,
              onTap: () => context.go('/productList'),
            ),
            ActionCard(
              title: 'Clients',
              description: 'Manage your clients',
              icon: Icons.people,
              onTap: () => context.go('/clientList'),
            ),
            ActionCard(
              title: 'Sales',
              description: 'View and manage sales',
              icon: Icons.monetization_on,
              onTap: () => context.go('/saleList'),
            ),
            ActionCard(
              title: 'Invoices',
              description: 'Generate and manage invoices',
              icon: Icons.receipt_long,
              onTap: () => context.go('/invoiceScreen'),
            ),
            // Add more options as needed
          ],
        ),
      ),
    );
  }
}
