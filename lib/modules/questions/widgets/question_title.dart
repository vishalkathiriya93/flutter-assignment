import 'package:flutter/material.dart';

class QuestionTitle extends StatelessWidget {
  const QuestionTitle({
    required this.title,
    Key? key,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24),
      child: Text(
       title,
        style: TextStyle(
            color: Colors.grey[700],
            fontWeight: FontWeight.w800,
            fontSize: 24),
        textAlign: TextAlign.start,
      ),
    );
  }
}
