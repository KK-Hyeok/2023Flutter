import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CenterTest extends StatefulWidget {
  const CenterTest({super.key});

  @override
  State<CenterTest> createState() => _CenterTestState();
}

class _CenterTestState extends State<CenterTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expended Test'),
        backgroundColor: Colors.deepPurple
      ),
      body: Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          elevation: 10,
          child: Container(
            color: Colors.red,
            width: 200,
            height: 200,
          ),
        ),
      )
    );
  }
}
