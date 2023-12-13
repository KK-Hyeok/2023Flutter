import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:math_expressions/math_expressions.dart';

class LengthCalculator extends StatefulWidget {
  @override
  _LengthCalculatorState createState() => _LengthCalculatorState();
}

class _LengthCalculatorState extends State<LengthCalculator> {
  final TextEditingController _lengthController = TextEditingController();
  String _fromUnit = '센티미터';
  String _toUnit = '미터';
  String _result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('길이 단위 계산기'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _lengthController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              inputFormatters: [
                FilteringTextInputFormatter.allow(
                  RegExp(r'^\d+\.?\d{0,2}$'),
                ),
              ],
              style: TextStyle(color: Colors.black, fontSize: 30), // 텍스트 색상을 흰색으로 설정
              decoration: InputDecoration(
                labelText: '길이',
                labelStyle: TextStyle(color: Colors.black), // 라벨 텍스트 색상을 흰색으로 설정
              ),
            ),
            SizedBox(height: 26.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DropdownButton<String>(
                  value: _fromUnit,
                  onChanged: (String? newValue) {
                    setState(() {
                      _fromUnit = newValue!;
                    });
                  },
                  items: ['센티미터', '미터', '인치', '피트']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value, style: TextStyle(color: Colors.black)), // 텍스트 색상을 흰색으로 설정
                    );
                  }).toList(),
                ),
                Icon(Icons.arrow_forward, color: Colors.black), // 아이콘 색상을 흰색으로 설정
                DropdownButton<String>(
                  value: _toUnit,
                  onChanged: (String? newValue) {
                    setState(() {
                      _toUnit = newValue!;
                    });
                  },
                  items: ['센티미터', '미터', '인치', '피트']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value, style: TextStyle(color: Colors.black)),
                    );
                  }).toList(),
                ),
              ],
            ),
            SizedBox(height: 26.0),
            ElevatedButton(
              onPressed: _convertLength,
              child: Text('변환'),
            ),
            SizedBox(height: 26.0),
            Text(
              '결과: $_result',
              style: TextStyle(fontSize: 18.0, color: Colors.black),
            ),
            SizedBox(height: 26.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _lengthController.text = '';
                      _result = '';
                    });
                  },
                  child: Text('초기화'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _convertLength() {
    try {
      double inputValue = double.parse(_lengthController.text);

      double result;
      switch (_fromUnit) {
        case '센티미터':
          result = _convertFromCentimeter(inputValue, _toUnit);
          break;
        case '미터':
          result = _convertFromMeter(inputValue, _toUnit);
          break;
        case '인치':
          result = _convertFromInch(inputValue, _toUnit);
          break;
        case '피트':
          result = _convertFromFeet(inputValue, _toUnit);
          break;
        default:
          result = inputValue;
          break;
      }

      setState(() {
        _result = '$inputValue $_fromUnit = ${result.toStringAsFixed(2)} $_toUnit';
      });
    } catch (e) {
      setState(() {
        _result = '오류: 유효한 숫자를 입력하세요.';
      });
    }
  }

  double _convertFromCentimeter(double value, String toUnit) {
    switch (toUnit) {
      case '미터':
        return value / 100.0;
      case '인치':
        return value / 2.54;
      case '피트':
        return value / 30.48;
      default:
        return value;
    }
  }

  double _convertFromMeter(double value, String toUnit) {
    switch (toUnit) {
      case '센티미터':
        return value * 100.0;
      case '인치':
        return value * 39.37;
      case '피트':
        return value * 3.281;
      default:
        return value;
    }
  }

  double _convertFromInch(double value, String toUnit) {
    switch (toUnit) {
      case '센티미터':
        return value * 2.54;
      case '미터':
        return value * 0.0254;
      case '피트':
        return value * 0.0833;
      default:
        return value;
    }
  }

  double _convertFromFeet(double value, String toUnit) {
    switch (toUnit) {
      case '센티미터':
        return value * 30.48;
      case '미터':
        return value * 0.3048;
      case '인치':
        return value * 12.0;
      default:
        return value;
    }
  }
}