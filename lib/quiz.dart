import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  var questions;

  var quesetionIndex;
  final Function(int) answerQuestion;

  Quiz(
      {@required this.questions,
      @required this.quesetionIndex,
      required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[quesetionIndex]['questionText'].toString(),
        ),
        ...(questions[quesetionIndex]["answers"] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
            answerQuestion,
            answer["text"] as String,
            answer["score"] as int,
          );
        }).toList(),
      ],
    );
  }
}
