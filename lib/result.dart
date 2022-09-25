import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Result extends StatelessWidget {
  const Result({Key? key, required this.controller}) : super(key: key);
  final AnimationController controller;
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
        const Text("You did it !"),
      ],
    ));
  }
}
