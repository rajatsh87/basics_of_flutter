import "package:flutter/material.dart";
import './questions.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions; 
  final int questionIndex;
  final Function function;
  Quiz({ @required this.questions,
         @required this.function,
         @required this.questionIndex
      });

  @override
  Widget build(BuildContext context) {
    return Column(
              children: <Widget>[
                Question(questions[questionIndex]['question']),
                ...(questions[questionIndex]['answers'] as List<Map<String,Object>>) //
                    .map((ans) {
                  return Answer(()=>function(ans['score']), ans['text']);
                })
              ],
            );
  }
}