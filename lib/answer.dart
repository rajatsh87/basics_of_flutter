import "package:flutter/material.dart";

class Answer extends StatelessWidget {
  final Function funPointer;
  final String answer;
  Answer(this.funPointer,this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: double.infinity,
      child: (
        RaisedButton(
          color: Colors.white ,
          child: Text(answer),
          onPressed: funPointer,
        )
      ),
    );
  }
}