import  'package:flutter/material.dart';

import 'LoginScreen.dart';
import 'RegisterScreen.dart';
import 'passRecoveryScreen.dart';

void main () {
  runApp(const AuthApp());
}

class AuthApp extends StatelessWidget {
  const AuthApp({Key? key}) : super(key: key);
}

Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Flutter Auth UI',

      theme: ThemeData (
        primarySwatch: Colors.indigo,
        primaryColor: const Color(0xFF3949AB),
        scaffoldBackgroundColor: Colors.grey[50],

          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0)
            ),

            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: const BorderSide(color: Color(0xFF3949AB), width: 2.0),
            ),
          )
      )
  );


}