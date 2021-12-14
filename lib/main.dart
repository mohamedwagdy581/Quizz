import 'package:flutter/material.dart';
import 'package:quizapp/componants/result.dart';
import './componants/./quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {'questionText':'What\'s your favourite animal?',
      'answers':[
        {'text':'Cats','answer':10},
        {'text':'Dogs','answer':9},
        {'text':'Lions',"answer":8},
        {'text':'Monkey',"answer":5}
      ]
    },
    {
      'questionText':'What\'s your favourite color?',
      'answers':[
        {'text':'Red','answer':6},
        {'text':'Black','answer':10},
        {'text':'Green','answer':5},
        {'text':'White',"answer":8}
      ]
    },
    {
      'questionText':'What\'s your favourite subject?',
      'answers':[
        {'text':'Electronics','answer':8},
        {'text':'Math','answer':10},
        {'text':'Physics','answer':7},
        {'text':'Programming',"answer":10}
      ]
    },
    {
      'questionText':'What\'s your favourite drink?',
      'answers':[
        {'text':'Tea','answer':8},
        {'text':'Hot Coffee','answer':10},
        {'text':'Ice Coffee','answer':9},
        {'text':'Lemonade',"answer":7}
      ]
    },
    {
      'questionText':'What\'s your favourite Football Player?',
      'answers':[
        {'text':'Mohamed Salah','answer':10},
        {'text':'Cristiano Ronaldo','answer':9},
        {'text':'Leo Messi','answer':10},
        {'text':'Neymar',"answer":8}
      ]
    }

  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int answer) {
    _totalScore += answer;
    setState(() {
      _questionIndex += 1;
    });
  }
  void _resetQuiz (){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Quiz App'),
          backgroundColor: Colors.black,
        ),
        body: _questionIndex < _questions.length ? Quiz(
          answerQuestion: _answerQuestion,
          questions: _questions,
          questionIndex: _questionIndex,)
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }

}