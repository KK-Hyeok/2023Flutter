import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMIResult extends StatelessWidget {
  final double height;
  final double weight;
  const BMIResult({Key? key, required this.height, required this. weight});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:
      Text('비만도 계산기'),
      backgroundColor: Colors.cyan,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('정상',style: TextStyle(fontSize: 36),),
            SizedBox(
              height: 16,
            ),
            Icon(Icons.sentiment_satisfied,
            color: Colors.green,
            size: 100,)
          ],
        ),),
    );
  }
}
