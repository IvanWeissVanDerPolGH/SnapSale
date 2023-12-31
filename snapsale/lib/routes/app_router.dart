import 'package:snapsale/screens/RegistroDePersona/registratio_form_screen.dart';
import 'package:snapsale/screens/RegistroDePersona/RegistroDePersonas_Screen.dart';
import 'package:snapsale/screens/RegistroDePersona/lista_de_personas_screen.dart';
import 'package:snapsale/screens/RegistroDePersona/person_registry_screen.dart';
import 'package:snapsale/screens/ReservaDeTurno/form_screen.dart';
import 'package:snapsale/screens/ReservaDeTurno/list_screen.dart';
import 'package:snapsale/screens/ReservaDeTurno/menu_screen.dart';
import 'package:snapsale/screens/auth/main_screen.dart';
import 'package:snapsale/screens/Consulta/consulta_screen.dart';
import 'package:snapsale/screens/ficha_clinica/form_screen.dart';
import 'package:snapsale/screens/ficha_clinica/form_screen_con_reserva.dart';
import 'package:snapsale/screens/ficha_clinica/form_screen_sin_reserva.dart';
import 'package:snapsale/screens/ficha_clinica/list_screen.dart';
import 'package:snapsale/screens/ficha_clinica/menu_screen.dart';
import 'package:snapsale/screens/home/home_screen.dart';

import 'package:snapsale/screens/home/log_out_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:snapsale/screens/auth/login_screen.dart';
import 'package:snapsale/screens/auth/reset_password.dart';

class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        pageBuilder: (context, state) =>
            const MaterialPage(child: MainScreen()),
      ),
      GoRoute(
        path: '/login',
        pageBuilder: (context, state) =>
            const MaterialPage(child: LoginScreen()),
      ),
      GoRoute(
        path: '/reset_password',
        pageBuilder: (context, state) =>
            const MaterialPage(child: ResetPassword()),
      ),
      GoRoute(
        path: '/LogOut',
        pageBuilder: (context, state) =>
            const MaterialPage(child: LogOutScreen()),
      ),
      GoRoute(
        path: '/Home',
        pageBuilder: (context, state) =>
            const MaterialPage(child: HomeScreen()),
      ),
      GoRoute(
        path: '/RegistroDePersonasScreen',
        pageBuilder: (context, state) =>
            const MaterialPage(child: RegistroDePersonasScreen()),
      ),
      GoRoute(
        path: '/ConsultasScreen',
        pageBuilder: (context, state) =>
            const MaterialPage(child: ConsultaScreen()),
      ),
      GoRoute(
        path: '/PersonRegistryScreen',
        pageBuilder: (context, state) =>
            const MaterialPage(child: PersonRegistryScreen()),
      ),
      GoRoute(
        path: '/ListaDePersonasScreen',
        pageBuilder: (context, state) =>
            const MaterialPage(child: ListaDePersonasScreen()),
      ),
      GoRoute(
        path: '/RegisterPersonScreen',
        pageBuilder: (context, state) =>
            const MaterialPage(child: RegistrationFormScreen()),
      ),
      GoRoute(
        path: '/ReservaDeTurnosMenuScreen',
        pageBuilder: (context, state) =>
            const MaterialPage(child: TurnosMenu()),
      ),
      GoRoute(
        path: '/ReservaDeTurnosFormScreen',
        pageBuilder: (context, state) =>
            const MaterialPage(child: ReservaDeTurnosScreen()),
      ),
      GoRoute(
        path: '/ReservaDeTurnosListScreen',
        pageBuilder: (context, state) =>
            const MaterialPage(child: ListaDeTurnosScreen()),
      ),
      GoRoute(
        path: '/FichaClinicaMenuScreen',
        pageBuilder: (context, state) =>
            const MaterialPage(child: FichasMenu()),
      ),
      GoRoute(
        path: '/FichaClinicaFormScreen',
        pageBuilder: (context, state) =>
            const MaterialPage(child: CrearFichasMenu()),
      ),
      GoRoute(
        path: '/FichaClinicaFormScreenConReserva',
        pageBuilder: (context, state) => 
          const MaterialPage(child: FichaClinicaFormScreenConReserva()),
      ),
      GoRoute(
        path: '/FichaClinicaFormScreenSinReserva',
        pageBuilder: (context, state) => 
          const MaterialPage(child: FichaClinicaFormScreenSinReserva()),
      ),
      GoRoute(
        path: '/FichaClinicaListScreen',
        pageBuilder: (context, state) =>
            const MaterialPage(child: ListaDeFichasClinicasScreen()),
      ),
    ],
  );
}
