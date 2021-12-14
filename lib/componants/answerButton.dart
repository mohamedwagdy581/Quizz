import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  AnswerButton(
    this.selectHandler,
    this.answerText,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      padding: EdgeInsets.all(5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.black, onPrimary: Colors.white),
        onPressed: selectHandler,
        child: Text(
          answerText,
        ),
      ),
    );
  }
}
