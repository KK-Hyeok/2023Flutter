import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertDialogTest extends StatefulWidget {
  const AlertDialogTest({super.key});

  @override
  State<AlertDialogTest> createState() => _AlertDialogTestState();
}

class _AlertDialogTestState extends State<AlertDialogTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AlertDilalogTest'),
      backgroundColor: Colors.purpleAccent,),
    body: ElevatedButton(
      child: Text('show Dialog'),
      onPressed: (){
        showDialog(
            context: context,
            builder: (BuildContext context){
              return AlertDialog(
                title: Text('제목'),
                content: SingleChildScrollView(
                  child: ListBody(
                    children: [
                      Text('Alert Dialog 입니다.'),
                      Text('OK를 눌러주세요')
                    ],
                  ),
                ),
                actions: <Widget>[
                  TextButton(
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                    child: Text('OK'),
                  ),
                  TextButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                        }, 
                      child: Text('Cancle'))
                ],
              );
            }
            );
      },
    )
    );
  }
}
