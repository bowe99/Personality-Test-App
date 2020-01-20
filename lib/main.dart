import 'package:flutter/material.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget{
  void answerQuestion(){
    print('Answered Question');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Text('The Question'),
            RaisedButton(child: Text('Answer 1'), onPressed: () => print('Answer 1 Chosen'),),
            RaisedButton(child: Text('Answer 2'), onPressed: answerQuestion,),
            RaisedButton(child: Text('Answer 3'), onPressed: answerQuestion,),
            RaisedButton(child: Text('Answer 4'), onPressed: answerQuestion,),
          ],
        )
      ),
    );
    
  }
}