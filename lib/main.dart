import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDice = 1;
  int rightDice = 1;
  void changeDice(){
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
      print('Right Button Clicked');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                  onPressed:(){
                    changeDice();
                  },
                  child: Image.asset('images/dice$leftDice.png')),
            ),
            ),
            Expanded(child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                  onPressed:(){
                    changeDice();
                  },
                  child: Image.asset('images/dice$rightDice.png')),
            ),
            )
          ],
        ),
      ),
    );
  }
}

