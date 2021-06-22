import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    //questions is compile time constant
    {
      "questionText": "What\'s your favourite color?",
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 8},
        {'text': 'Green', 'score': 4},
        {'text': 'White', 'score': 1}
      ],
    },
    {
      "questionText": "What\'s your favourite animal?",
      'answers': [
        {'text': 'Dog', 'score': 9},
        {'text': 'Elephant', 'score': 10},
        {'text': 'cat', 'score': 7},
        {'text': 'totorise', 'score': 2}
      ],
    },
    {
      "questionText": "What\'s your favourite sports?",
      'answers': [
        {'text': 'Cricket', 'score': 8},
        {'text': 'Football', 'score': 10},
        {'text': 'tenish', 'score': 7},
        {'text': 'basketball', 'score': 6}
      ],
    },
    {
      "questionText": "What\'s your favourite food?",
      'answers': [
        {'text': 'Pizza', 'score': 10},
        {'text': 'momo', 'score': 4},
        {'text': 'salad', 'score': 8},
        {'text': 'Biryani', 'score': 9}
      ],
    },
    {
      "questionText": "What\'s your favourite thing to do?",
      'answers': [
        {"text": "Singing", 'score': 7},
        {"text": "Dancing", 'score': 8},
        {"text": "Painting", 'score': 9},
        {"text": "Travelling", 'score': 10},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    //var aBool = true;
    //aBool = false;
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print("No more Question!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[700],
          title: Text(
            "My First App",
          ),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_questions, _answerQuestion, _questionIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
