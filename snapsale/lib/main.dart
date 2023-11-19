//file snapsale/lib/main.dart

import 'package:snapsale/providers/auth_provider.dart';
import 'package:snapsale/providers/patient_provider.dart';
import 'package:snapsale/providers/physiotherapist_provider.dart';
import 'package:snapsale/routes/app_router.dart';
import 'package:snapsale/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart'; 
import 'package:provider/provider.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Necesario para que Firebase funcione en el arranque
  await Firebase.initializeApp(               // Inicializar Firebase
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MultiProvider(
      
      providers: [
        ChangeNotifierProvider(create: (context) => AuthProvider()),
        ChangeNotifierProvider(create: (context) => PhysiotherapistProvider()),
        ChangeNotifierProvider(create: (context) => PatientProvider()),
      ],
      child: const MyApp(),
    ),
  );
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

