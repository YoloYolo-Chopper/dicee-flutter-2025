import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDiceNumber = 6;
  int rightDiceNumber = 6;

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
          children: <Widget>[
            Expanded(
              // flex: 2,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    leftDiceNumber = Random().nextInt(5) + 1;
                    rightDiceNumber = Random().nextInt(5) + 1;
                  });
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
            Expanded(
              // flex:4,
              child: TextButton(
                  onPressed: () {
                    setState() {
                      leftDiceNumber = Random().nextInt(5) + 1;
                      rightDiceNumber = Random().nextInt(5) + 1;
                    }
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png')),
            ),
          ]
      ),
    );
  }
}