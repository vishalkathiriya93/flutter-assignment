import 'package:flutter/material.dart';
import 'package:flutter_home_assignment/modules/questions/widgets/question_appbar.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: QuestionsAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(""),
          ],
        ),
      ),
    );
  }
}
