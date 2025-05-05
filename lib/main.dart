import 'package:flutter/material.dart';
import 'package:quiz/start_screen.dart';

void main () {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 93, 16, 182),
                Color.fromARGB(255, 149, 16, 182),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
           ),
          ),
          child: const StartScreen(),
        ),
      ),
    ),
  );
}
  