import 'package:ch6/Person.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key?key});
  final String person = '';

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  String resultStr = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Text(resultStr),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
            child: Text('이전페이지로 이동'),
            onPressed: (){
              final person = Person('김길동', 40);
              Navigator.pop(context, person);
            },
          ),
          SizedBox(height: 50,),
          ElevatedButton(
            child: Text('다시 2번째 페이지로 이동'),
            onPressed: () async {
              final person = new Person('홍길동', 30);
              final result = await Navigator.pushNamed(
                context,
                '/second'
              );
              setState(() {
                //returnStr = result.name;
              });
            },
          ),
        ],
      ),
    );
  }
}
