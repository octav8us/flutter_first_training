import 'dart:ffi';

import 'package:first_app/answer.dart';
import 'package:first_app/quiz.dart';
import 'package:flutter/material.dart';
import './question.dart';
import './quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _quesetionIndex = 0;
  var _totalScore = 0;
  final _questions = [
    {
      "questionText": "what is your name?",
      "answers": [
        {"text": "malik", "score": 10},
        {"text": "magdy", "score": 10},
        {"text": "max", "score": 10}
      ]
    },
    {
      "questionText": "what is your favorite color?",
      "answers": [
        {"text": "red", "score": 10},
        {"text": "green", "score": 10},
        {"text": "blue", "score": 10}
      ]
    },
    {
      "questionText": "what is the capital of vezeulla?",
      "answers": [
        {"text": "tanta", "score": 10},
        {"text": "zefta", "score": 10},
        {"text": "santa", "score": 10}
      ]
    },
  ];
void _reset() {
  setState(() {

    _totalScore = 0;
    _quesetionIndex = 0;
  });

}
  void _answerQuestion( int score, ) {
    _totalScore += score;

    if (_quesetionIndex < _questions.length) {
      print("tmam ");

      setState(() {
        _quesetionIndex++;
      });
      print(_quesetionIndex);
    } else {
      print("finish ");
      print(_quesetionIndex);
    }
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }

/*  var questions = [
    "what is your name?",
    "what is your favorite color?",
    "what is the capital of vezeulla?"
  ];*/

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("first app"),
        ),
        body: _quesetionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                quesetionIndex: _quesetionIndex,
                questions: _questions,
              )
            :  result(_totalScore , _reset),
      ),
    );
  }
}
