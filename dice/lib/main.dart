import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const Dice());
}

class Dice extends StatefulWidget {
  const Dice({super.key});
  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int num1 = 1;
  int num2 = 1;
  void rand() {
    setState(() {
      num1 = Random().nextInt(6) + 1;
      num2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('DICE'),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    rand();
                  },
                  child: Image.asset('images/dice$num1.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    rand();
                  },
                  child: Image.asset('images/dice$num2.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
