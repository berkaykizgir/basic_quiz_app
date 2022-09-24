import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  const Answer(this.selectHandler, this.answerText, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [Colors.cyan, Colors.indigo]),
          borderRadius: BorderRadius.circular(20),
        ),
        child: ElevatedButton(
          onPressed: selectHandler,
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
              shadowColor: MaterialStateProperty.all(Colors.transparent)),
          child: Text(
            answerText,
            style: const TextStyle(color: Colors.white),
          ),
        ));
  }
}
