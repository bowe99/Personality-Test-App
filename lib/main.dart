import 'package:flutter/material.dart';
import './quiz.dart';
import './results.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State{ // Leading _ restricts the us of MyAppState to the same folder
  var _questionIndex = 0;        // Making the variable private can't be used anywhere else than the same file
  final _questions = const [
      {'questionText': 'What\'s your favorite country?',
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
  List<String> _resultQuestions = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Center(
          child: Text('Personality Test'),
          )
        ),
        body: _questionIndex < _questions.length 
          ? Quiz(
              answerQuestion: _answerQuestion,
              questions: _questions,
              questionIndex: _questionIndex,
              results: _resultQuestions,
            ) 
          : Results(_resultQuestions)
      ),
    );
    
  }
}