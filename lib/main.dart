import 'package:flutter/material.dart';


void main() => runApp(MyApp());


class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State{
  var questionIndex = 0;
  
  void answerQuestion(){
    setState(() {
      questionIndex++;
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
            Text(questions[questionIndex]),
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