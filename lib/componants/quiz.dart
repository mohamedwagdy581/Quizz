import 'package:flutter/material.dart';
import './answerButton.dart';
import './questios.dart';

class Quiz extends StatelessWidget {
  final List<Map<String,Object>> questions;
  final Function answerQuestion;
  final int questionIndex;
  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questios(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers']as List<Map<String,Object>>).map((answer) {
          return AnswerButton(() => answerQuestion(answer['answer']), answer['text']);
        }).toList()
      ],
    );
  }
}
