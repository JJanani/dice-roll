import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
      MaterialApp(
        home: myBallPage(),
      ),
    );

class myBallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text(' Ask Me Anything'),
      ),
      body: Ball(

      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballimage=3;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            print('i got clicked');
            ballimage=Random().nextInt(5)+1;
            print('dicenumber= $ballimage');
          });

        },
        child: Image.asset('images/ball$ballimage.png'),
      ),
    );
  }
}
