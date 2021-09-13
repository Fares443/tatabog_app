import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text('تطابق الصور'),
          backgroundColor: Colors.indigo[800],
        ),
        body: Myapp(),
      ),
    ),
  );
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  int lefteImageNumber = 2;
  int rigthImageNumber = 1;
  void first() {
    rigthImageNumber = Random().nextInt(8) + 1;
    lefteImageNumber = Random().nextInt(8) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          lefteImageNumber == rigthImageNumber ? 'الف مبروك' : 'حاول مرة أخرى',
          style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: [
                Shadow(
                  color: Colors.black,
                  blurRadius: 5,
                  offset: Offset(1, 10),
                ),
              ]),
        ),
        Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    first();
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset('images/image-$lefteImageNumber.png'),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    first();
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset('images/image-$rigthImageNumber.png'),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
