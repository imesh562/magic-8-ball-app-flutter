import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MagicBall(),
    );

class MagicBall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text(
            'Ask Me Anything',
            style: TextStyle(fontSize: 30.0),
          ),
          backgroundColor: Colors.blue[800],
        ),
        body: MBbody(),
      ),
    );
  }
}

class MBbody extends StatefulWidget {
  @override
  _MBbodyState createState() => _MBbodyState();
}

class _MBbodyState extends State<MBbody> {
  int imageNum = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(
              child: Image.asset('images/ball$imageNum.png'),
              onPressed: () {
                randomGenarator();
              },
            ),
          ),
        ),
      ],
    );
  }

  randomGenarator() {
    setState(() {
      imageNum = Random().nextInt(5) + 1;
    });
  }
}
