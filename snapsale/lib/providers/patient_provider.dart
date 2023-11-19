import 'package:flutter/material.dart';
import 'package:snapsale/models/patient.dart';

class PatientProvider with ChangeNotifier {
  final List<Patient> _patients = [];

  List<Patient> get patients {
    return [..._patients];
  }

  void addPatient(Patient patient) {
    _patients.add(patient);
    notifyListeners();
  }

  void removePatient(Patient patient) {
    _patients.remove(patient);
    notifyListeners();
  }
}