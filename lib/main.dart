import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text(
            'Ask me anything!',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          backgroundColor: Colors.blueGrey.shade800,
        ),
        body: ball(),
      ),
    );
  }
}

class ball extends StatefulWidget {
  @override
  _ballState createState() => _ballState();
}

class _ballState extends State<ball> {
  int ballNum = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
            onPressed: () {
              setState(() {
                ballNum = Random().nextInt(4) + 1;
              });
            },
            child: Image.asset('images/ball$ballNum.png')),
      ),
    );
  }
}
