import 'package:flutter/material.dart';
import 'dart:math';

class Games extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 81, 131, 190),
      appBar: AppBar(
        title: Text("Games"),
      ),
      body: Dice(),
    );
  }
}

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int firstdiceNumber = 6;
  int secondDiceNumber = 6;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                child: Image.asset("assets/dices/dice$firstdiceNumber.png"),
                onPressed: () {
                  setState(() {
                    firstdiceNumber = Random().nextInt(6)+1;
                  });
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                child: Image.asset("assets/dices/dice$secondDiceNumber.png"),
                onPressed: () {
                  setState(() {
                    secondDiceNumber = Random().nextInt(6)+1;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
