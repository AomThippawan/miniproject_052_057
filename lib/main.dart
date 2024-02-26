import 'package:flutter/material.dart';
import 'package:miniproject_note_2/main.dart';
import 'package:miniproject_note_2/screens/home.dart';
import 'package:miniproject_note_2/screens/login.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login': (context) => LoginPage(),
      },
    );
  }
}
