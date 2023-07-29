import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(const Newdice());
}

class Newdice extends StatefulWidget {
  const Newdice({super.key});

  @override
  State<Newdice> createState() => _NewdiceState();
}

class _NewdiceState extends State<Newdice> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var changeImage = 'assets/dice2.png';
  var changeImage2 = 'assets/dice1.png';
  int LeftDice = 1;
  int RightDice = 1;
  void roll(){
    setState(() {
      int LeftDice = Random().nextInt(6)+1;
      changeImage = 'assets/dice$LeftDice.png';
    });
  }
  void roll2(){
    setState(() {
      int RightDice = Random().nextInt(6)+1;
      changeImage2 = 'assets/dice$RightDice.png';
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice App'),
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.redAccent,
      body: Center(
        child: Row(
          children: [
            Expanded(  child: GestureDetector(
                onTap:roll,
                child: Image.asset(changeImage))),

            SizedBox(
              width: 30,
            ),

            Expanded( child: GestureDetector(
                onDoubleTap: roll2,
                child: Image.asset(changeImage2))),
          ],
        ),
      ),
    );
  }
}

