import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Container(child: Text('Dicee'))),
          backgroundColor: Colors.red,
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
  void rollDice(){
    leftDiceNumber = Random().nextInt(6)+1;//[1,6]
    print('leftDiceNumber= $leftDiceNumber');
    rightDiceNumber = Random().nextInt(6)+1 ;//[1,6]
    print("rightDiceNumber= $rightDiceNumber");
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    rollDice();
                  });
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    rollDice();
                  });
                },
                child: Image.asset('images/dice$rightDiceNumber.png'
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
