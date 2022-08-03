import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90.0,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        border: Border.all(color: Colors.black, width: 1.0),
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 5, 75, 15),
      ),
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.only(top: 20),
      child: Text(
        questionText,
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          // backgroundColor: Color.fromARGB(255, 142, 241, 241)
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
