// ignore: file_names
// ignore_for_file: library_private_types_in_public_api

import 'package:firebase_auth/firebase_auth.dart';
import 'package:snapsale/reusable_widgets/reusable_widget.dart';
import 'package:snapsale/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Fisio Seguro',
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.settings,
            ),
            onPressed: () {
              context.push('/settings');
            },
          ),
        ],
      ),
      body: BackgroundGradient(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
          child: Padding(
            padding: const  EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  ActionCard(icon: Icons.category_rounded,title: 'Categorias', description: 'Permite administrar las categorías para agrupar las consultas de los pacientes', onTap: () { context.push('/ConsultasScreen'); },),
                  const SizedBox(height: 5.0),
                  ActionCard(icon: Icons.co_present_rounded, title: 'Pacientes y Doctores', description: 'Permite administrar los pacientes y doctores de la clínica', onTap: () { context.push('/PersonRegistryScreen'); },),
                  const SizedBox(height: 5.0),
                  ActionCard(icon: Icons.calendar_month_rounded,title: 'Reserva de turnos', description: 'Permite agregar y consultar reservas de turnos', onTap: () {context.push('/ReservaDeTurnosMenuScreen');  },),
                  const SizedBox(height: 5.0),
                  ActionCard(icon: Icons.assignment,title: 'Ficha clínica', description: 'Premite registrar fichas clínicas con o sin una reserva existente, incluyendo un motivo de consulta y diagnóstico a la ficha. Admite exportar los reportes en excel y pdf.', onTap: () {context.push('/FichaClinicaMenuScreen');},),
             ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.exit_to_app),
        onPressed: () {
          FirebaseAuth.instance.signOut().then((value) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
          });
        },
      ),
    );
  }
}