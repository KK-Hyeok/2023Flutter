import 'package:ch6/person.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SecondPage.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key,required this.person});
  final Person person;
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  late String resultStr;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FirstText'),
      ),
      body: Column(
        children: [
          Text(resultStr),
          ElevatedButton(
            child: Text('다음 페이지로 이동'),
            onPressed: () async {
              final person = new Person('홍길동',30);
              final result = await Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>SecondPage(person : person)),
              );
              setState(() {
                resultStr = result;
              });
            },
          ),
        ],
      ),
    );
  }
}
