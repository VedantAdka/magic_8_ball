import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue.shade300,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent.shade700,
          title: Center(
            child: Text(
              'Ask Me Anything',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Source Sans 3',
              ),
            ),
          ),
        ),
        body: Magic8Ball(),
      ),
    ),
  );
}
class Magic8Ball extends StatefulWidget {
  const Magic8Ball({super.key});

  @override
  State<Magic8Ball> createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  int ballno=1;
  void ball_face_change(){
    setState(() {
      ballno=Random().nextInt(5)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(child: TextButton(
            onPressed: (){
              ball_face_change();
            },
            child: Image.asset('images/ball$ballno.png'),
          ),
          ),
        ],
      ),
    );
  }
}
