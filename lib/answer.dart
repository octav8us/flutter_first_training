import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function(int) questionSetter;
  String answerText;
  int score;

  Answer(this.questionSetter , this.answerText , this.score);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        child: ElevatedButton(
          child: Text(answerText),
          onPressed:() => questionSetter(score),
        )
    );
  }
}
