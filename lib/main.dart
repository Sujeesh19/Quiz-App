import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';
import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'question': 'What\'s your favorite color?',
      'answers': [
        {'Text': 'Black', 'score': 10},
        {'Text': 'Red', 'score': 6},
        {'Text': 'Blue', 'score': 8},
        {'Text': 'Green', 'score': 2},
      ],
    },
    {
      'question': 'What\'s your favorite animal?',
      'answers': [
        {'Text': 'Lion', 'score': 10},
        {'Text': 'Tiger', 'score': 8},
        {'Text': 'Dog', 'score': 7},
        {'Text': 'Cat', 'score': 3},
      ],
    },
    {
      'question': 'What\'s your favorite Sport?',
      'answers': [
        {'Text': 'Cricket', 'score': 10},
        {'Text': 'Football', 'score': 9},
        {'Text': 'VolleyBall', 'score': 5},
        {'Text': 'Boxing', 'score': 2},
      ],
    },
    {
      'question': 'What\'s your favorite Car Brand?',
      'answers': [
        {'Text': 'Maruti', 'score': 4},
        {'Text': 'Toyota', 'score': 6},
        {'Text': 'BMW', 'score': 10},
        {'Text': 'Audi', 'score': 8},
      ],
    },
  ];
  var _quesIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _quesIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _quesIndex = _quesIndex + 1;
    });

    print(_quesIndex);
    if (_quesIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 193, 218, 245),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 5, 76, 8),
          title: Text('Quiz App'),
          centerTitle: true,
        ),
        body: _quesIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                quesIndex: _quesIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
