import "package:flutter/material.dart";

class Result extends StatelessWidget {
  final int score;
  final Function resetQuiz;
  Result(this.score,this.resetQuiz);
  String get resultPhrase {
    String resultText;
    print(score);
    if (score < 60) {
      resultText = "you are innocent";
    } else {
      resultText = "you are a champ";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Column(
          children: <Widget>[
            Text(
      resultPhrase,
      style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
    ),

    FlatButton(child:Text("Restart Quiz"),onPressed:resetQuiz ,)
          ],
        ));
  }
}
