import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String answer;
  final Function selectHandler;
  AnswerButton(this.answer, this.selectHandler);
  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 40, right: 40),
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answer),
        onPressed: selectHandler,
      ),
    );
  }

  
}