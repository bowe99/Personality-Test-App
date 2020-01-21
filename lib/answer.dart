import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String answer;
  final Function answerQuestion;
  final List<String> results;
  AnswerButton(this.answer, this.answerQuestion, this.results);
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(
          answer,
          style: TextStyle(fontSize: 18),
          ),
        onPressed: (){
          results.add(answer);
          print(results);
          answerQuestion();
        },
      ),
    );
  }

  
}