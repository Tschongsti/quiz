import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:quiz/question_index_container.dart';

class QuestionsSummary extends StatelessWidget{
  const QuestionsSummary (this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column (
          children: summaryData.map(
            (data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              QuestionIndexContainer(
                ((data['question_index'] as int) + 1).toString(),
                data['user_answer'] == data['correct_answer'] ? const Color.fromARGB(255, 59, 215, 226) : const Color.fromARGB(255, 236, 69, 214),
              ),            
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      style: GoogleFonts.lato(
                        color: const Color.fromARGB(255, 236, 227, 247),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ), 
                      (data['question']) as String),
                    const SizedBox(height: 5,),
                    Text(
                      style:TextStyle (
                        color: Colors.deepPurple,
                      ),
                      (data['user_answer']) as String),
                    Text(
                      style:TextStyle (
                        color: const Color.fromARGB(255, 61, 161, 219),
                      ),
                      (data['correct_answer']) as String),
                  ],
                ),
              ),
            ],);
            },
          ).toList(),
        ),
      ),
    );
  }
}