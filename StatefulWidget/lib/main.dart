import 'package:flutter/material.dart';
import './question.dart'; //everything that's in question.dart file is now available in this file
import './answer.dart';

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
    void _answerQuestion(){
      setState(() {
        indexQuestion = indexQuestion + 1;
      });
       
       print(indexQuestion);
    }
    var questions = [
      {
        'questionText':'What\'s your favourite color?',
        'answers': ['Red', 'Black', 'Pink', 'Purple'],
      },
      {
        'questionText':'City you would love to visit?',
        'answers': ['Delhi', 'Chennai', 'Gandhi Nagar', 'Hyderabad'],
      },
      {
        'questionText':'Language you would love to learn?',
        'answers': ['Dart', 'HTML', 'JavaScript', 'Objective C'],
      },
      ];

    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('My First App'),
      ),
      body: Column(children: [
        Question(
          questions[indexQuestion]['questionText'] as String,
            
        ),
          ...(questions[indexQuestion]['answers'] as List<String>).map((
            return Answer(_answerQuestion, answer);
  }).toList()
      ],
      ),
    ),
    );
  }
}

