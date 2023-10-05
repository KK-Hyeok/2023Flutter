import 'package:flutter/material.dart';
import "HelloPage.dart";
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      home: HelloPage(title: '하이 월드',)
    );
  }
}
