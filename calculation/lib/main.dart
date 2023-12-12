import 'package:calculation/LengthCalculator.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

import 'Calculator.dart';

void main() => runApp(MyApp());

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
        home: Calculator(),
        routes: {
          '/first' : (context)=>Calculator(),
          '/second' : (context)=>LengthCalculator(),
        }
    );
  }
}
