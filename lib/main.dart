import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const DiceApp());
}

class DiceApp extends StatelessWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}



class FirstPage extends StatefulWidget {
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  var leftDiceNumber = '2';
  var rightDiceNumber = '2';




  void changeLeftDiceNumber (){
  Random random = new Random();
  int randomNumber = random.nextInt(6) + 1;
  leftDiceNumber = randomNumber.toString();

}
  void changeRightDiceNumber (){
    Random random = new Random();
    int randomNumber = random.nextInt(6) + 1;
    rightDiceNumber = randomNumber.toString();

  }




@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Dice App'),
      ),
      body:Center(
        child: Row(
          children: [
            Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      changeLeftDiceNumber();

                    });



                  },
                    child: Image.asset('assets/dice$leftDiceNumber.png',))),
            //Empty space
            SizedBox(
              width: 50,
            ),
            Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      changeRightDiceNumber();
                    });

                  },
                    child: Image.asset('assets/dice$rightDiceNumber.png',))),
          ],

        ),
      )


    );
  }
}
