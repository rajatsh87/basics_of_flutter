import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function rest;
  Result(this.totalScore, this.rest);
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          "all question hace been answered total score:${totalScore}",
          style: TextStyle(color: Colors.white, fontSize: 38),
          textAlign: TextAlign.center,
        ),
        FlatButton(
            onPressed: rest,
            child: Text(
              "press to reset quiz",
              style: TextStyle(color: Colors.white),
            ))
      ],
    ));
  }
}
