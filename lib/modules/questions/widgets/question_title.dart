import 'package:flutter/material.dart';

class QuestionTitle extends StatelessWidget {
  const QuestionTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24),
      child: Text(
        "How much of your brain do you use?",
        style: TextStyle(
            color: Colors.grey[700],
            fontWeight: FontWeight.w800,
            fontSize: 24),
        textAlign: TextAlign.start,
      ),
    );
  }
}
