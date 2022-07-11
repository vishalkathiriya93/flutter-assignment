import 'package:flutter/material.dart';
import 'package:flutter_home_assignment/modules/questions/models/question.dart';
import 'package:flutter_home_assignment/modules/questions/providers/questions_provider.dart';
import 'package:flutter_home_assignment/modules/questions/widgets/answer_button.dart';
import 'package:flutter_home_assignment/modules/questions/widgets/question_appbar.dart';
import 'package:flutter_home_assignment/modules/questions/widgets/question_title.dart';
import 'package:flutter_home_assignment/widgets/loader.dart';
import 'package:provider/provider.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  void didChangeDependencies() {
    context.read<QuestionsProvider>().getQuestions();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: QuestionsAppBar(),
        body: context.watch<QuestionsProvider>().questionList.isEmpty
            ? Loader()
            : SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                child: Column(
                  children: [
                    const Placeholder(
                      child: SizedBox(
                        height: 150,
                        width: double.infinity,
                      ),
                    ),
                    QuestionTitle(
                        title: context
                            .watch<QuestionsProvider>()
                            .currentQuestion!
                            .text),
                    AnswerSet(),
                  ],
                ),
              ));
  }
}

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
    allAnswers.addAll(
        context.watch<QuestionsProvider>().currentQuestion!.incorrectAnswers);
    allAnswers
        .add(context.watch<QuestionsProvider>().currentQuestion!.correctAnswer);
    allAnswers.shuffle();
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
