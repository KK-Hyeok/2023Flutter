import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EventTest extends StatefulWidget {
  const EventTest({super.key});

  @override
  State<EventTest> createState() => _EventTestState();
}

class _EventTestState extends State<EventTest> {
  String eventMessage = '기본값';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EventTest'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$eventMessage'),
            SizedBox(height: 40,),
            GestureDetector(
              child: Text('Click Me'),
              onTap: (){
                setState(() {
                  eventMessage = 'GestureDetector Click';
                });
              },
            ),
            SizedBox(height: 40,),
            InkWell(
              child: Text('Click Me'),
              onTap: (){
                setState(() {
                  eventMessage = 'InkWell Click';
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
