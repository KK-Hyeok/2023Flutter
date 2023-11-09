import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DatePickerTest extends StatefulWidget {
  const DatePickerTest({super.key});

  @override
  State<DatePickerTest> createState() => _DatePickerTestState();
}

class _DatePickerTestState extends State<DatePickerTest> {
  @override
  DateTime? SelectedDate;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DatePickerTest'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Column(
        children: [
          ElevatedButton(
            child: Text('Select Button'),
            onPressed: (){
              Future<DateTime?> selectedDate = showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2023),
                  lastDate: DateTime(2030),
                builder: (BuildContext context, Widget? child){
                    return Theme(
                        data: ThemeData.dark(),
                        child: child!,
                    );
                }
              );
              selectedDate.then((dateTime){
                setState(() {
                  SelectedDate = dateTime;
                });
              });
            },
          ),
          Text('$SelectedDate')
        ],
      ),
    );
  }
}
