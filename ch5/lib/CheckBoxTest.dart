import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckBoxTest extends StatefulWidget {
  const CheckBoxTest({super.key});

  @override
  State<CheckBoxTest> createState() => _CheckBoxTestState();
}

class _CheckBoxTestState extends State<CheckBoxTest> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox Test'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 350,)
            ,
            Checkbox(
              value : isChecked,
              onChanged: (value){
                setState(() {
                  isChecked = value;
                });
              },
            ),
            Switch(
                value: isChecked!,
                onChanged: (value){
                  setState(() {
                    isChecked = value;
                  });

            }
            ),
          ],
        ),
      ) ,
    );
  }
}
