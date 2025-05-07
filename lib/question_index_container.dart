import 'package:flutter/material.dart';

class QuestionIndexContainer extends StatelessWidget{
  const QuestionIndexContainer (this.questionIndex, this.circleColor, {super.key});

  final String questionIndex;
  final Color circleColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20,),
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          color: circleColor,
          shape: BoxShape.circle,
        ),
        alignment: Alignment.center,
        child: Text(
          questionIndex,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}