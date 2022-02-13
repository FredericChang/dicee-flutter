import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[200],
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red[300],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {

    // var rng = Random();
    void changeState() {
      setState(() {
        leftDiceNumber = Random().nextInt(6) + 1;
        rightDiceNumber = Random().nextInt(6) + 1;
      });
    }

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                changeState();
                print('Left button got pressed. $leftDiceNumber');
                print('Right button got pressed. $rightDiceNumber');
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                changeState();
                print('Left button got pressed. $leftDiceNumber');
                print('Right button got pressed. $rightDiceNumber');
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}




