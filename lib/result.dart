import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultData {
    var resultText = 'You accomplished it!!';
    if (resultScore <= 8) {
      resultText = 'you are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty simple!!';
    } else if (resultScore <= 16) {
      resultText = 'You are carefree!! ';
    } else {
      resultText = 'You are strong!!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultData,
            style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.brown[400]),
          ),
          FlatButton(
            child: Text(
              "Restart Quiz!",
            ),
            textColor: Colors.blueGrey[800],
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
