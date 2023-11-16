import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTop(),
        _buildMiddle(),
        _buildBottom(),
      ],
    );
  }

  Widget _buildTop() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                print('클릭');
              },
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.local_taxi,
                    size: 40,
                  ),
                  Text('택시'),
                ],
              ),
            ),
            Column(
              children: <Widget>[
                Icon(
                  Icons.local_taxi,
                  size: 40,
                ),
                Text('택시'),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(
                  Icons.local_taxi,
                  size: 40,
                ),
                Text('택시'),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(
                  Icons.local_taxi,
                  size: 40,
                ),
                Text('택시'),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: <Widget>[
                Icon(
                  Icons.local_taxi,
                  size: 40,
                ),
                Text('택시'),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(
                  Icons.local_taxi,
                  size: 40,
                ),
                Text('택시'),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(
                  Icons.local_taxi,
                  size: 40,
                ),
                Text('택시'),
              ],
            ),
            Opacity(
              // 화면의 공간을 맞추기 위해
              opacity: 0.0,
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.local_taxi,
                    size: 40,
                  ),
                  Text('택시'),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildMiddle() {
    return Text('Middle');
  }

  Widget _buildBottom() {
    return Text('Bottom');
  }
}
