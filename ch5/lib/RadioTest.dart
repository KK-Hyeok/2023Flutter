import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioTest extends StatefulWidget {
  const RadioTest({super.key});

  @override
  State<RadioTest> createState() => _RadioTestState();
}
enum Gender {MAN, WUMEN}

Gender _gender = Gender.MAN;

class _RadioTestState extends State<RadioTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
        AppBar(
          title: Text('Radio Test'),
          backgroundColor: Colors.cyan,
        ),
      body: Column(
        children: [
          SizedBox(height: 100,),
          ListTile(
            title: Text('남자'),
            leading: Radio(
              value: Gender.MAN,
              groupValue: _gender,
              onChanged: (value){
                setState(() {
                  _gender = value!;
                });
              },
            ),
          ),
          ListTile(
            title: Text('여자'),
            leading: Radio(
              value: Gender.WUMEN,
              groupValue: _gender,
              onChanged: (value){
                setState(() {
                  _gender = value!;
                });
              },
            ),
          ),
          SizedBox(height: 100,),
          RadioListTile(
            title: Text('남자'),
              value: Gender.MAN,
              groupValue: _gender,
            onChanged: (value){
              setState(() {
                _gender = value!;
              });
            },),
          RadioListTile(
            title: Text('여자'),
            value: Gender.WUMEN,
              groupValue: _gender,
            onChanged: (value){
              setState(() {
                _gender = value!;
              });
            },)
        ],
      ),

    );
  }
}
