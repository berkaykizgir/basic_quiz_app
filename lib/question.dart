import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  const Question(this.questionText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(16),
        child: Text(
          questionText,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 20),
        ));
  }
}
