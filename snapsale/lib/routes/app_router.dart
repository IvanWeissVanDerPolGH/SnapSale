import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:snapsale/models/category.dart';
import 'package:snapsale/screens/homeScreen/home_screen.dart';
import 'package:snapsale/screens/categories/category_edit_screen.dart';
import 'package:snapsale/screens/categories/category_list_screen.dart';
import 'package:snapsale/screens/clients/client_edit_screen.dart';
import 'package:snapsale/screens/clients/client_list_screen.dart';
import 'package:snapsale/screens/invoices/invoice_screen.dart';
import 'package:snapsale/screens/products/product_edit_screen.dart';
import 'package:snapsale/screens/products/product_list_screen.dart';
import 'package:snapsale/screens/sales/sale_edit_screen.dart';
import 'package:snapsale/screens/sales/sale_list_screen.dart';
import 'package:snapsale/services/category_service.dart';
// Import other screens if necessary

class AppRouter {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/categoryList',
        builder: (context, state) => const CategoryListScreen(),
      ),
GoRoute(
  path: '/categoryEdit/:id',
  builder: (context, state) {
    // Extract category ID from state path parameters
    final categoryId = state.pathParameters['id'];

    return FutureBuilder<Category?>(
      future: categoryId != null ? CategoryService().loadCategory(categoryId) : Future.value(null),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          // Future is complete, return the screen
          return CategoryEditScreen(category: snapshot.data);
        } else {
          // While waiting for the future to complete, show a loading spinner
          return Scaffold(
            appBar: AppBar(title: const Text('Loading...')),
            body: const Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  },
),


      GoRoute(
        path: '/clientList',
        builder: (context, state) => const ClientListScreen(),
      ),
      GoRoute(
        path: '/clientEdit',
        builder: (context, state) => const ClientEditScreen(),
      ),
      GoRoute(
        path: '/productList',
        builder: (context, state) => const ProductListScreen(),
      ),
      GoRoute(
        path: '/productEdit',
        builder: (context, state) =>  const ProductEditScreen(),
      ),
      GoRoute(
        path: '/saleList',
        builder: (context, state) => const SaleListScreen(),
      ),
      GoRoute(
        path: '/saleEdit',
        builder: (context, state) =>  const SaleEditScreen(),
      ),
      GoRoute(
        path: '/invoice',
        builder: (context, state) => const InvoiceScreen(),
      ),
      // Add more routes here
    ],
  );
}
