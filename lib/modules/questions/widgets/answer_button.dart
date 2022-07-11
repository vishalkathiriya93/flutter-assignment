
import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    required this.title,
    Key? key,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      width: double.infinity,
      height: 50,
      child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.indigo[600],
          ),
          onPressed: () {
            // context.read<QuestionsProvider>().currentQuestionIndex = 1;
          },
          child: FittedBox(
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w800),
            ),
          )),
    );
  }
}
