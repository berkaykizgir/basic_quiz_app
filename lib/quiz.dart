import 'package:basic_quiz_app/question.dart';
import 'package:flutter/material.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  const Quiz(
      {Key? key,
      required this.answerQuestion,
      required this.questions,
      required this.questionIndex})
      : super(key: key);
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer['score'] as int),
              answer['text'] as String);
        }).toList()
      ],
    );
  }
}
