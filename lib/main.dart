import 'package:basic_quiz_app/answer.dart';
import 'package:basic_quiz_app/question.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  var questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Blue', 'Red', 'White', 'Green']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Dog', 'Cat', 'Elephant']
    },
  ];

  void _answerQuestion() {
    setState(() {
      questionIndex == 0 ? questionIndex++ : questionIndex--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Question(questions[questionIndex]['questionText'] as String),
            ...(questions[questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
