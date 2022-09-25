import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Result extends StatelessWidget {
  const Result(
      {Key? key,
      required this.controller,
      this.resultScore = 0,
      required this.resetHandler})
      : super(key: key);
  final AnimationController controller;
  final int resultScore;
  final VoidCallback resetHandler;

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Lottie.network(
          "https://assets9.lottiefiles.com/packages/lf20_keoed4f6.json",
          controller: controller,
          repeat: true,
          onLoaded: (composition) {
            controller.duration = composition.duration;
            controller.forward();
            controller.repeat();
          },
        ),
        Text(
          resultPhrase,
          style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        TextButton(onPressed: resetHandler, child: const Text('Restart Quiz!')),
      ],
    ));
  }
}
