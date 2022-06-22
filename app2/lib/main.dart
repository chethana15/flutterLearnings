import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
//variables inside class are known as properties
//functions inside class are known as methods
class MyApp extends StatelessWidget {


  @override 
  Widget build(BuildContext context){
    var questions = [
      'What\'s your favourite color?', 
      'City you would love to visit?', 
      'Language you would love to learn?'
      ];

    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('My First App'),
      ),
      body: Column(children: [
        Text('The question!'),
        RaisedButton(
          onPressed: () => print('You tapped answe 1 !!'), child: Text('Answer 1'),
          ),
        RaisedButton(
          onPressed: () => print('You tapped answe 2 !!'), child: Text('Answer 2'),
          ),
        RaisedButton(
          onPressed:  () => print('You tapped answe 3 !!'), child: Text('Answer 3'),
          ),
      ],
      ),
    ),
    );
  }
}

