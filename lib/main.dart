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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: TextButton(
                  child: Image.asset('images/dice2.png')),
          ),
          Expanded(
              child: TextButton(
                  child: Image.asset('images/dice2.png'))
          ),
        ],
      ),
    );
  }
}



