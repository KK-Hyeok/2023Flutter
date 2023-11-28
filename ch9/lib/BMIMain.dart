import 'package:ch9/BMIResult.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMIMain extends StatefulWidget {
  const BMIMain({super.key});

  @override
  State<BMIMain> createState() => _BMIMainState();
}

class _BMIMainState extends State<BMIMain> {
  final _formKey = GlobalKey<FormState>();
  final _heightController = TextEditingController();
  final _weightContorller = TextEditingController();

  void dispose(){
    _heightController.dispose();
    _weightContorller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    controller: _heightController,
                    validator: (value){
                      if(value!.trim().isEmpty){
                        return '키 값을 입력하세요';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16.0,),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: '몸무게',
                    ),
                    keyboardType: TextInputType.number,
                    controller: _weightContorller,
                    validator: (value){
                      if(value!.trim().isEmpty){
                        return '몸무게 값을 입력하세요';
                      }
                      return null;
                    },
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16.0),
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                        onPressed: (){
                          if(_formKey.currentState!.validate()){
                            Navigator.push(context, MaterialPageRoute(builder:
                                (context)=>BmiResult(
                                    height: double.parse(_heightController.text.trim()),
                                    weight: double.parse(_weightContorller.text.trim()),
                                )
                              ),
                            );
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
