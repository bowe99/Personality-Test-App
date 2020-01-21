import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State{ // Leading _ restricts the us of MyAppState to the same folder
  var _questionIndex = 0;        // Making the variable private can't be used anywhere else than the same file

  
  void answerQuestion(){
    setState(() {
      _questionIndex++;
    });
    print('Answered Question');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite country in the list bellow?',
      'What\'s your favorite actor?',
      'What\'s your favorite animal'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]),
            RaisedButton(child: Text('Answer 1'), onPressed: answerQuestion,),
            RaisedButton(child: Text('Answer 2'), onPressed: answerQuestion,),
            RaisedButton(child: Text('Answer 3'), onPressed: answerQuestion,),
            RaisedButton(child: Text('Answer 4'), onPressed: answerQuestion,),
          ],
        )
      ),
    );
    
  }
}