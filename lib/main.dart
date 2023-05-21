import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  //Changes
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 1, 25, 44),
          title: Center(child: Text("Ask Me Anything")),
        ),
        backgroundColor: Colors.blue,
        body: Ball(),
      ),
    );
  }
}
class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int changeQuestion= 2;
  void changequestion(){
    changeQuestion = Random().nextInt(5)+1;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  changequestion();
                });
              },
              child: Image.asset('images/ball$changeQuestion.png'),
            ),
          )
        ],
      ),
    );
  }
}
