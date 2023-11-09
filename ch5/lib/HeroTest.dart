import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeroTest extends StatefulWidget {
  const HeroTest({super.key});

  @override
  State<HeroTest> createState() => _HeroTestState();
}

class _HeroTestState extends State<HeroTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Test'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: GestureDetector(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context){
                    return HeroDetailPage();
                  })
          );
        },
        child: Hero(
          tag: 'image',
          child: Image.asset('assets/cat.jpg',
          width: 100,
          height: 100,),
        ),
      ),
    );
  }
}

class HeroDetailPage extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title:
      Text('Hero Detail'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Hero(
        tag: 'image',
        child: Image.asset('assets/cat.jpg'),
      ),
    );
  }
}