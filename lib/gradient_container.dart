import 'package:flutter/material.dart';
import 'package:quiz/styled_text.dart';
import 'package:quiz/outlined_button.dart';
 
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer ({super.key, required this.colors, required this.text});
 
final List<Color> colors;
final String text;

  @override
  Widget build (context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
              'assets/images/quiz-logo.png',
              width: 200
            ),
          const SizedBox (height: 20),
          StyledText(text),
          const SizedBox (height: 20),
          OutlinedButtonExample('Start Quiz'),
        ],
      ),
    );
  }
}