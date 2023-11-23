import 'package:ch9/MyCostomForm.dart';
import 'package:ch9/MyForm.dart';
import 'package:flutter/material.dart';
import 'package:ch9/BMIMain.dart';
import 'package:ch9/BMIResult.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BMIMain(),
    );
  }
}

