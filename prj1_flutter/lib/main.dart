import 'package:flutter/material.dart';
import 'login_screen.dart'; // Assurez-vous d'avoir créé ce fichier

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Application Opportunités d\'Emploi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(), // Appel de l'écran de connexion
    );
  }
}
