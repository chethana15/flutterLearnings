import 'package:flutter/widgets.dart';

class Question extends StatelessWidget {
  // const MyWidget({Key? key}) : super(key: key);
final String questionText;

Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}