import 'package:flutter/material.dart';
import 'dart:math';
import 'package:fluttertoast/fluttertoast.dart';


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
            //버튼테마 더이상 사용안함
            // ButtonTheme(
            //   minWidth: 100.0,
            //   height: 60.0,
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    print('실행0');
                    leftDice = Random().nextInt(6)+1;
                    rightDice = Random().nextInt(6)+1;
                    print('실행');
                  });
                  showToast("left dice :{$leftDice}, Right dice: {$rightDice}");
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(80.0,50.0),
                    backgroundColor: Colors.orangeAccent),
                child: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
              ),
            // )
          ],
        ),
      ),
    );
  }
}

void showToast(String message){
  Fluttertoast.showToast(msg: message,
  backgroundColor: Colors.white,
  textColor: Colors.green,
  toastLength: Toast.LENGTH_SHORT,
  gravity: ToastGravity.BOTTOM);

}