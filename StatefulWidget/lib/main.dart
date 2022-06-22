import 'package:flutter/material.dart';
import './question.dart'; //everything that's in question.dart file is now available in this file

void main(){
  runApp(MyApp());
}
//variables inside class are known as properties
//functions inside class are known as methods
class MyApp extends StatefulWidget {
@override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   
    return _MyAppState();

     // throw UnimplementedError();
  }
}

//here create a class with widget name ending with State
//here this state will be persistent
//State<MyApp> tells state belongs to MyApp
//we use _ to make it as private property
class _MyAppState extends State<MyApp> {
var indexQuestion = 0;

  @override 
  Widget build(BuildContext context){
    void answerQuestion(){
      setState(() {
        indexQuestion = indexQuestion + 1;
      });
       
       print(indexQuestion);
    }
    var questions = [
      'What\'s your favourite color?', 
      'City you would love to visit?', 
      'Language you would love to learn?'
      ];

    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('My First App'),
      ),
      body: Column(children: [
        Question(
          questions[indexQuestion],
        ),
        RaisedButton(
          onPressed: answerQuestion, 
          child: Text('Answer 1'),
          ),
        RaisedButton(
          onPressed: () => print('You tapped answe 2 !!'), 
          child: Text('Answer 2'),
          ),
        RaisedButton(
          onPressed:  () {
            print('You tapped answe 3 !!');
            } , child: Text('Answer 3'),
          ),
      ],
      ),
    ),
    );
  }
}

