import "package:flutter/material.dart";
import './question.dart';
import "./answer.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State {
  var _questions = [
    {
      "questionText": "What is your favourite color",
      "answers": ["Black", "Red", "Green", "Yellow"]
    },
    {
      "questionText": "What is your favourite animal",
      "answers": ["Dog", "Cat", "Cow", "Snake"]
    }
  ];
  int _questionIndex = 0;

  _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("My First App"),
            ),
            body: Column(
              children: [
                Question(_questions[_questionIndex]['questionText']),
                ...(_questions[_questionIndex]["answers"] as List<String>)
                    .map((answer) {
                  return Answer(_answerQuestion, answer);
                }).toList()
              ],
            )));
  }
}
