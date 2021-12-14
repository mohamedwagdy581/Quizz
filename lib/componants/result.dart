import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(
      this.resultScore,
      this.resetHandler
      );

  // Get Method to return Text message depended on the Score
  String get resultPhrase {
    String resultText;
    if (resultScore <= 37)
    {
      resultText = 'You are so bad!';
    } else if (resultScore <= 40)
    {
      resultText = 'You are ..... Strange?!';
    } else if(resultScore <= 45)
    {
      resultText = 'Pretty Likeable!';
    }else if(resultScore <= 50)
      {
        resultText = 'You are awesome and innocent!';
      }
    return resultText;

  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
              resultPhrase,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10.0,
          ),
          // ElevatedButton to reset the TotalResult and the Index of list to 0
          ElevatedButton(
              onPressed: resetHandler,
              style: ElevatedButton.styleFrom(primary: Colors.black),
              child: Text(
                'Restart Quiz',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
          ),
        ],
      ),
    );
  }
}
