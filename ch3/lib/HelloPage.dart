import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter Demo",
        home: HelloPage(title: '하이 월드',)
    );
  }
}

class HelloPage extends StatefulWidget{
  late String title;

  HelloPage({super.key, required String title}){
    this.title = title;
  }
  State<HelloPage> createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  String message = 'Hello World';
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('hello World'),
      ),
      body: Text(
        message,
        style: TextStyle(fontSize: 50),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(({
              message = "헬로 월드";
          }));
        }
      ),
    );
  }

