
import 'package:flutter/material.dart';
import 'package:flutter_home_assignment/modules/questions/enums/question_screen_state.dart';
import 'package:flutter_home_assignment/modules/questions/providers/questions_provider.dart';
import 'package:flutter_home_assignment/modules/questions/widgets/answer_button.dart';
import 'package:provider/provider.dart';

class AnswerSet extends StatefulWidget {
  const AnswerSet({
    Key? key,
  }) : super(key: key);

  @override
  State<AnswerSet> createState() => _AnswerSetState();
}

class _AnswerSetState extends State<AnswerSet> {
  @override
  void didChangeDependencies() {
    if (context.read<QuestionsProvider>().questionState ==
        QuestionState.initial) {
      allAnswers.clear();
      allAnswers.addAll(context
          .watch<QuestionsProvider>()
          .questionList[context.watch<QuestionsProvider>().currentQuestionIndex]
          .incorrectAnswers);
      allAnswers.add(context
          .watch<QuestionsProvider>()
          .questionList[context.watch<QuestionsProvider>().currentQuestionIndex]
          .correctAnswer);

      allAnswers.shuffle();
    }

    super.didChangeDependencies();
  }

  List<String> allAnswers = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < allAnswers.length; i++)
          AnswerButton(
            title: allAnswers[i],
          ),
      ],
    );
  }
}
