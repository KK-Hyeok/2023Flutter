import 'package:calculation/LengthCalculator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String _input = '';
  String _result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('계산기',style: TextStyle(color: Colors.white,)),
        backgroundColor: Colors.white12,

      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              '$_input',
              style: TextStyle(fontSize: 50.0,color: Colors.white),
            ),
            SizedBox(height: 40.0),
            Row(mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[ElevatedButton(
                  child: Icon(Icons.straighten),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LengthCalculator()));
                  },
                ),
                  _buildButtonIcon(Icon(Icons.backspace_outlined, size: 25.0,), onPressed: () => _onButtonPressed('C'),buttonColor : Colors.black, iconColor : Colors.white.withOpacity(0.3) ),
                ]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    _clear();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white10, // 원하는 배경 색상으로 변경
                    fixedSize: Size(100, 80),
                  ),
                  child: Text("C", style: TextStyle(fontSize: 35,color: Colors.orangeAccent.withOpacity(0.7)),
                  ),
                ),
                _buildButton('^', onPressed: () => _onButtonPressed('^'),buttonColor : Colors.white10),
                _buildButtonIcon(Icon(Icons.percent, size: 40.0), onPressed: () => _onButtonPressed('%')),
                _buildButton('/', onPressed: () => _onButtonPressed('/'),buttonColor : Colors.white10,),
                //_buildButtonIcon(Icon(Icons.backspace_rounded), onPressed: () => _onButtonPressed('C')),
              ],
            ),
            SizedBox(height: 1.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildButton('7', onPressed: () => _onButtonPressed('7')),
                _buildButton('8', onPressed: () => _onButtonPressed('8')),
                _buildButton('9', onPressed: () => _onButtonPressed('9')),
                _buildButtonIcon(Icon(Icons.clear, size: 40.0), onPressed: () => _onButtonPressed('*')),
              ],
            ),
            SizedBox(height: 1.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildButton('4', onPressed: () => _onButtonPressed('4')),
                _buildButton('5', onPressed: () => _onButtonPressed('5')),
                _buildButton('6', onPressed: () => _onButtonPressed('6')),
                _buildButtonIcon(Icon(Icons.remove, size: 40.0), onPressed: () => _onButtonPressed('-')),
              ],
            ),
            SizedBox(height: 1.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildButton('1', onPressed: () => _onButtonPressed('1')),
                _buildButton('2', onPressed: () => _onButtonPressed('2')),
                _buildButton('3', onPressed: () => _onButtonPressed('3')),
                _buildButtonIcon(Icon(Icons.add,size: 40.0), onPressed: () => _onButtonPressed('+'),buttonColor : Colors.white10),
              ],
            ),
            SizedBox(height: 1.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildButton('.', onPressed: () => _onButtonPressed('.')),
                _buildButton('0', onPressed: () => _onButtonPressed('0')),
                _buildButton('', onPressed: () => _onButtonPressed('')),
                _buildButton('=', onPressed: () => _onButtonPressed('='), buttonColor : Colors.green.withOpacity(0.7)),
              ],
            ),

          ],
        ),
      backgroundColor: Colors.black38,
    );
  }

  Widget _buildButtonIcon(Widget icon, {Function()? onPressed, Color? buttonColor, Color? iconColor}) {
    return ElevatedButton(
      onPressed: onPressed != null ? () => onPressed() : null,
      style: ElevatedButton.styleFrom(
        primary: buttonColor ?? Colors.white10, // 원하는 배경 색상으로 변경, 기본값은 파란색
        onPrimary: iconColor ?? Colors.white, // 아이콘 색상 설정, 기본값은 흰색
        fixedSize: Size(100, 80),
      ),
      child: icon,
    );
  }

  Widget _buildButton(String text, {Function()? onPressed, Color? buttonColor, Color? textColor}) {
    return ElevatedButton(
      onPressed: onPressed != null ? () => onPressed() : null,
      style: ElevatedButton.styleFrom(
        primary: buttonColor ?? Colors.white24, // 원하는 배경 색상으로 변경, 기본값은 파란색
        onPrimary: textColor ?? Colors.white, // 텍스트 색상 설정, 기본값은 흰색
        fixedSize: Size(100, 80),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 40.0),
      ),
    );
  }

  void _onButtonPressed(String text) {
    setState(() {
      if (text == '=') {
        _calculateResult();
      } else if (text == 'C') {
        _clearLastCharacter();
      } else {
        _input += text;
      }
    });
  }

  void _calculateResult() {
    try {
      Parser p = Parser();
      Expression exp = p.parse(_input);
      ContextModel cm = ContextModel();
      double eval = exp.evaluate(EvaluationType.REAL, cm);

      _result = eval.toString();
    } catch (e) {
      _result = '';
    }
    setState(() {
      _input = _result;
    });
  }

  void _clearLastCharacter() {
    setState(() {
      if (_input.isNotEmpty) {
        _input = _input.substring(0, _input.length - 1);
      }
    });
  }

  void _clear() {
    setState(() {
      _input = '';
      _result = '';
    });
  }
}