import 'package:flutter/material.dart';
import "./quiz.dart";
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var questions = [
    {
      "question": "what's your favorite color",
      "answers": [
        {"text": "black", "score": 10},
        {"text": "blue", "score": 9},
        {"text": 'red', "score": 8},
        {"text": 'white', "score": 7}
      ]
    },
    {
      "question": "what's your favorite food",
      "answers": [
        {"text": 'pizza', "score": 10},
        {"text": 'pasta', "score": 9},
        {"text": 'chicken', "score": 8}
      ]
    },
    {
      "question": "what's your favorite destination",
      "answers": [
        {"text": "spain", "score": 10},
        {"text": "france", "score": 9},
        {"text": 'australia', "score": 8},
        {"text": 'maldives', "score": 7}
      ]
    }
  ];
  int _totalScore = 0;
  void onSelectAnswer(int score) {
    _totalScore += score;
    setState(() {
      ++questionIndex;
    });
    print("button is pressed");
    print(questionIndex);
  }

  void onSelectRest() {
    setState(() {
      _totalScore = 0;
      questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('this my first app'),
      ),
      body: questionIndex < questions.length
          ? Quiz(
              questions: questions,
              function: onSelectAnswer,
              questionIndex: questionIndex)
          : Result(_totalScore, onSelectRest),
    ));
  }
}
