import 'package:flutter/material.dart';
import 'package:codingin/login.dart';
import 'package:codingin/welcome.dart';
import 'package:codingin/signup.dart';
import 'package:codingin/home.dart';


void main() => runApp(codingin());

class codingin extends StatelessWidget {
  const codingin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => welcome_view(),
        '/login': (context) => Login(),
        '/signup': (context) => Signup(),
        '/home': (context) => Home(),
      },
    );
  }
}
