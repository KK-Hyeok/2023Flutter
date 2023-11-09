import 'package:ch5/AlertDialogTest.dart';
import 'package:ch5/HeroTest.dart';
import 'package:ch5/RadioTest.dart';
import 'package:flutter/material.dart';
import 'DatePickerTest.dart';
import 'DropDownTest.dart';
import 'EventTest.dart';
import 'TextFieldTest.dart';
import 'CheckBoxTest.dart';
import 'RadioTest.dart';
import 'HeroTest.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: const ContainerTest(),
      home: HeroTest(),
    );
  }
}
