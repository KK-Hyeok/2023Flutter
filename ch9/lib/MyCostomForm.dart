import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCostomForm extends StatefulWidget {
  const MyCostomForm({super.key});

  @override
  State<MyCostomForm> createState() => _MyCostomFormState();
}

class _MyCostomFormState extends State<MyCostomForm> {
  String inputMessage = 'Hi';
  final MyContorller = TextEditingController();

  initState(){
    super.initState();
    MyContorller.addListener(_printLatestvalue);
  }

  _printLatestvalue(){
    setState(() {
      inputMessage = MyContorller.text;
    });
  }

  @override
  void dispose() {
    MyContorller.dispose();
        super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        Text('Text Input'),
      backgroundColor: Colors.cyan,),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child : Column(
        children: [
          Text('$inputMessage'),
          TextField(
            onChanged: (text){
              setState(() {
                inputMessage = text;
              });
              print("첫 번째 text field: $text");
            },
          ),
          SizedBox(height: 20,),
          TextField(
            controller: MyContorller,
          ),
        ],
      ),
          )
    );
  }
}
