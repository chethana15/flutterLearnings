import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class Question extends StatelessWidget {
  // const MyWidget({Key? key}) : super(key: key);
final String questionText;

Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,//here container takes as much as width is available to it. This code helps us to make our text to align center.
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        
        style: TextStyle(fontSize: 20, color: Color.fromARGB(240, 183, 107, 74) ),
        textAlign: TextAlign.center,
    ), 
    );
  }
}