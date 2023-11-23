import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMIMain extends StatefulWidget {
  const BMIMain({super.key});

  @override
  State<BMIMain> createState() => _BMIMainState();
}

class _BMIMainState extends State<BMIMain> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return 
        Scaffold(
          appBar: AppBar(
            title: Text('비만도 계산기'),
          backgroundColor: Colors.cyan,),
          body: Container(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: '키',
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(height: 16.0,),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: '몸무게',
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16.0),
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                        onPressed: (){
                          if(_formKey.currentState!.validate()){
                            
                          }
                        },
                      child: Text('결과'),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
  }
}
