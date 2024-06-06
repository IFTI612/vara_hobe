import 'package:flutter/material.dart';
import 'package:vara_hobe/login.dart';
import 'package:vara_hobe/reg.dart';
import 'package:vara_hobe/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash(),
    );
  }
}

