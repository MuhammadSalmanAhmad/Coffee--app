import 'package:flutter/material.dart';
import 'signIn_screen.dart';
import 'home_screen.dart';
import 'Signup_screen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomeScreen(),
      'signinScreen': (context) => SignInscreen(),
      'SignupScreen': (context) => SignupScreen()
    },
  ));
}
