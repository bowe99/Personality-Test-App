import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State{ // Leading _ restricts the us of MyAppState to the same folder
  var _questionIndex = 0;        // Making the variable private can't be used anywhere else than the same file
  final questions = const [
      {'questionText': 'What\'s your favorite country in the list bellow?',
       'answers': ['Canada', 'USA', 'Russia', 'China']
      },
      {'questionText': 'What\'s your favorite actor?',
      'answers': ['Tom Cruise', 'Seth Rogan', 'Joaquin Phoenix', 'Jennifer Lawrence']
      },
      {'questionText': 'What\'s your favorite animal',
       'answers': ['Dog', 'Cat', 'Dolphin', 'Tiger']
      }
    ];
  
  void _answerQuestion(){
      setState(() {
      _questionIndex++;
    });
    print('Answered Question');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My First App'),
        ),
        body: _questionIndex < questions.length 
          ? Column(
            children: <Widget>[
            Question(questions[_questionIndex]['questionText']),
            ...(questions[_questionIndex]['answers'] as List<String>).map((answer){
              return AnswerButton(answer, _answerQuestion);
            }).toList()
           ],
          ): Center(
                child: Text('You Did it'),
          )
      ),
    );
    
  }
}