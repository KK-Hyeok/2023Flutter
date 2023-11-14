import 'package:ch6/person.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '';
import 'FirstPage.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key?key, required this.person},{super.key});
  final Person person;

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SecondPage"),
    ),
      body: Column(
        children: [
          Text(widget.person.name),
          ElevatedButton(
            child: const Text("이전 페이지로 이동"),
            onPressed: (){Navigator.push(
              context,'ok');
            );
            },
          ),
        ],
      ),
    );
  }
}
