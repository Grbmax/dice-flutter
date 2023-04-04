import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicey Boy')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int LeftNumber = 6;
  int RightNumber = 6;

  void updateNumber() {
    setState(() {
      LeftNumber = Random().nextInt(6) + 1;
      RightNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
              ),
              onPressed: () {
                updateNumber();
              },
              child: Image.asset('images/dice$LeftNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
              ),
              onPressed: () {
                updateNumber();
              },
              child: Image.asset('images/dice$RightNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
