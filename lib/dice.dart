import 'package:flutter/material.dart';
import 'dart:math';


class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDice = 2;
  int rightDice = 1;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: Text('dice game'),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(child: Image.asset('image/dice$leftDice.png')),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(child: Image.asset('image/dice$rightDice.png')),
                  //이미지 쉽게 부르기
                  // Image(image: AssetImage('image/dice1.png'),
                  // width: 300.0,)
                ],
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            ButtonTheme(
              minWidth: 100.0,
              height: 60.0,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    leftDice = Random().nextInt(6)+1;
                    rightDice = Random().nextInt(6)+1;

                  });

                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent),
                child: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
