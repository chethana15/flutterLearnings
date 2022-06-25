import 'dart:ffi';

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
//  const MyWidget({Key? key}) : super(key: key);
// final Function selectHandler;
final VoidCallback selectHandler;
final String answerText;
Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Color.fromARGB(255, 4, 112, 16),
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,
        ),
    );
  }
}