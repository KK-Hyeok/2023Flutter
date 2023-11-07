import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropDownTest extends StatefulWidget {
  const DropDownTest({super.key});

  @override
  State<DropDownTest> createState() => _DropDownTestState();
}
final _valueList = ['1st','2st','3st'];
var _selectedValue = '1st';
class _DropDownTestState extends State<DropDownTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DropDownTest"),
        backgroundColor: Colors.purpleAccent,
      ),
      body:
      Center(
        child: DropdownButton(
          value: _selectedValue,
          items: _valueList.map(
              (value){
                return DropdownMenuItem(
                  value: value,
                  child: Text(value),
                );
              },
          ).toList(),
          onChanged: (value){
            setState(() {
              _selectedValue = value!;
            });
          },
        ),
      ),
    );
  }
}
