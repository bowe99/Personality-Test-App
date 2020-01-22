import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final List<String> results;
  final Function resetQuiz;
  Results(this.results, this.resetQuiz);  

  String determinePersonality(List<String> result){
    List<String> qualities = [];
    switch (result[0]) {
      case 'Canada': 
        qualities.add('Kind');
        break;
      case 'USA':
        qualities.add('Capitalistic');
        break;
      case 'Russia':
        qualities.add('Socialist');
        break;
      case 'China':
        qualities.add('Evil');
        break;
    }
    switch (result[2]) {
      case 'Dog':
        qualities.add('Loyal');
        break;
      case 'Cat':
        qualities.add('Independant');
        break;
      case 'Dolphin':
        qualities.add('Elegant');
        break;
      case 'Tiger':
        qualities.add('Courageous');
        break;
    }
    switch (result[1]) {
      case 'Tom Cruise': 
        qualities.add('Badass');
        break;
      case 'Seth Rogan':
        qualities.add('Pothead');
        break;
      case 'Joaquin Phoenix':
        qualities.add('Old Man');
        break;
      case 'Jennifer Lawrence':
        qualities.add('Survivor');
        break;
    }
    String personality = '';
    for(var result in qualities){
      personality += (result + ' ');
    }
    return personality;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                    Text(
                      determinePersonality(results),
                      style: TextStyle(
                        fontSize: 28),
                      textAlign: TextAlign.center,
                      ),
                    FlatButton(
                      child: Text(
                        'Restart Quiz',
                        style: TextStyle(color: Colors.blue),),
                      onPressed: resetQuiz,

                    )
                    ]
                ),   
            );
  }
}