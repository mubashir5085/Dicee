import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Dicee',
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.redAccent,
          centerTitle: true,
        ),
        body: DicePage());
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int _leftDiceNumber = 1;
  int _rightDiceNumber = 1;

  void randomise() {
    setState(() {
      _leftDiceNumber = Random().nextInt(6) + 1;
      _rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(children: <Widget>[
            Expanded(
                child: FlatButton(
              onPressed: () {
                randomise();
              },
              child: Image.asset('images/dice$_leftDiceNumber.png'),
            )),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  randomise();
                },
                child: Image.asset('images/dice$_rightDiceNumber.png'),
              ),
            ),
          ]),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 100.0,
              ),
              Card(
                color: Colors.redAccent,
                child: Text('Designed and Developed by',style: TextStyle(color: Colors.white,fontSize: 20.0),),
              ),
              Card(
                color: Colors.redAccent,
                child: Text('Mubashir Saeed',style: TextStyle(color: Colors.white,fontSize: 20.0),),
              )
            ],
          )
        ],
      ),
    );
  }
}
