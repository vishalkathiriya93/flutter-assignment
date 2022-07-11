import 'package:flutter/material.dart';
import 'package:flutter_home_assignment/modules/questions/widgets/question_appbar.dart';
import 'package:flutter_home_assignment/modules/questions/widgets/question_title.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: QuestionsAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        child: Column(
          children: [
            const Placeholder(
              child: SizedBox(
                height: 150,
                width: double.infinity,
              ),
            ),
            QuestionTitle(),
            AnswerWidget(title: "placeholder",),
            AnswerWidget(title: "placeholder",),
            AnswerWidget(title: "placeholder",),
            AnswerWidget(title: "placeholder",),
          ],
        ),
      ),
    );
  }
}

class AnswerWidget extends StatelessWidget {
  const AnswerWidget({
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
          onPressed: () {},
          child: FittedBox(
            child: Text(
              title,
              style: TextStyle(color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w800),
            ),
          )),
    );
  }
}
