import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Stack_ extends StatefulWidget {
  const Stack_({super.key});

  @override
  State<Stack_> createState() => _Stack_State();
}

class _Stack_State extends State<Stack_> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:
      AppBar(
        title: Text('Stack'),
        backgroundColor: Colors.blue,
      ),
      body: Stack(children: <Widget>[
        Container(
          color: Colors.red,
          width: 80,
          height: 80,
          margin: EdgeInsets.all(10.0),
        ),
        Container(
          color: Colors.blue,
          width: 80,
          height: 80,
          margin: EdgeInsets.all(20.0),

        ),
      Container(
        color: Colors.green,
        width: 80,
        height: 80,
        margin: EdgeInsets.all(30.0),
      )
      ],
      ),
    );
  }
}
