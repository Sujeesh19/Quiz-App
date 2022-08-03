import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  var click = 'Restart Quiz';

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resText;
    String stringValue = resultScore.toString();
    if (resultScore <= 21) {
      resText = 'You were quit goot but keep it up and your score is: ';
    } else {
      resText = 'Wow! you Did it and your score is: ';
    }
    return resText + stringValue;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          RaisedButton(
            color: Colors.black,
            child: Text(
              click,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            textColor: Colors.blue,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
