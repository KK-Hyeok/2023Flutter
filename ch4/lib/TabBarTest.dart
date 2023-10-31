import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarTest extends StatefulWidget {
  const TabBarTest({super.key});

  @override
  State<TabBarTest> createState() => _TabBarTestState();
}

class _TabBarTestState extends State<TabBarTest> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, child: Scaffold(
      appBar: AppBar(
        title: Text('Tab Bar'),
        backgroundColor: Colors.blue,
        bottom: const TabBar(
          tabs: <Widget>[
            Tab(icon:  Icon(Icons.tag_faces)),
            Tab(text: '메뉴2'),
            Tab(icon: Icon(Icons.info)),
          ],
        ),
      ),
      body: TabBarView(children: <Widget>[
        Container(
            margin: EdgeInsets.all(10)),
        Container(
            margin: EdgeInsets.all(10)),
        Container(
            margin: EdgeInsets.all(10)),
      ]),
    ));
  }
}
