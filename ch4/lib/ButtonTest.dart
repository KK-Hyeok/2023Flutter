import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonTest extends StatefulWidget {
  const ButtonTest({super.key});

  @override
  State<ButtonTest> createState() => _ButtonTestState();
}

class _ButtonTestState extends State<ButtonTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Test'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment :  MainAxisAlignment.center,
        crossAxisAlignment : CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            color: Colors.red,
            width: 300,
            height: 50,
              ),
          Container(
            color: Colors.blue,
            width: 300,
            height: 50,
          )
            ],

      )
    );
  }

  void Test(){

  }
}
