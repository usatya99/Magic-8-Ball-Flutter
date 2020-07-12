import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Ball(),
    ),
  );
}

class Ball extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: ChangeBall(),
    );
  }
}

class ChangeBall extends StatefulWidget {
  @override
  _ChangeBallState createState() => _ChangeBallState();
}

class _ChangeBallState extends State<ChangeBall> {
  int Counter = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
          onPressed: () {
            setState(
              () {
                Counter = Random().nextInt(5) + 1;
              },
            );
          },
          child: Image.asset('images/ball$Counter.png'),
        ),
      ),
    );
  }
}
