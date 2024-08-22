import 'package:flutter/material.dart';

class QuizText extends StatelessWidget {
  final String answerText;
  TextEditingController answerController = new TextEditingController();

  QuizText({
    required this.answerText,
    required this.answerController

  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.all(15.0),
        margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: TextFormField(
          controller: answerController,
          keyboardType: TextInputType.number,
          style: TextStyle(
            fontSize: 15.0,
          ),
        ),
      ),
    );
  }
}