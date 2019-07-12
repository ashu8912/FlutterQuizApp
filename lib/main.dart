import "package:flutter/material.dart";
import "./quiz.dart";
import "./result.dart";

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
      "answers": [
        {"text": "Black", "score": 10},
        {"text": "Red", "score": 20},
        {"text": "Green", "score": 30},
        {"text": "Yellow", "score": 40}
      ]
    },
    {
      "questionText": "What is your favourite animal",
      "answers": [
        {"text": "Dog", "score": 10},
        {"text": "Cat", "score": 20},
        {"text": "Cow", "score": 30},
        {"text": "Snake", "score": 40}
      ]
    }
  ];
  int _questionIndex = 0;
  int _totalScore = 0;
  void _answerQuestion(int score) {
    setState(() {
      _questionIndex += 1;
       _totalScore += score;
  
    });
  
  }
  void _resetQuiz(){
      setState(() {
        _questionIndex=0;
          _totalScore = 0;
  
      });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("My First App"),
              backgroundColor: Colors.deepPurple,
            ),
            body: _questions.length > _questionIndex
                ? Quiz(_questions, _answerQuestion, _questionIndex)
                : Result(_totalScore,_resetQuiz)));
  }
}
