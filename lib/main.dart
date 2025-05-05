import 'package:flutter/material.dart';
import 'package:quiz/gradient_container.dart';

void main () {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [const Color.fromARGB(255, 103, 35, 221), const Color.fromARGB(255, 94, 55, 161)],
          text: 'Learn Flutter the fun way!'
        ),
      ),
    ),
  );
}
  