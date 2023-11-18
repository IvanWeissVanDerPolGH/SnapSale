//file snapsale/lib/main.dart

import 'package:snapsale/routes/app_router.dart';
import 'package:snapsale/themes/app_theme.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Necesario para que Firebase funcione en el arranque
  runApp(const MyApp());
  }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Fisio Seguro',
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
    );
  }
}

