import 'package:flutter/material.dart';
import 'package:flutter_home_assignment/modules/questions/providers/questions_provider.dart';
import 'package:flutter_home_assignment/modules/questions/widgets/answer_set.dart';
import 'package:flutter_home_assignment/modules/questions/widgets/dialogs/quiting_dialog.dart';
import 'package:flutter_home_assignment/modules/questions/widgets/question_appbar.dart';
import 'package:flutter_home_assignment/modules/questions/widgets/question_image.dart';
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
    return WillPopScope(
      onWillPop: () async {
        showDialog(context: context, builder: (_) => const QuittingDialog());
        return false;
      },
      child: Scaffold(
          appBar: const QuestionsAppBar(),
          body: context.watch<QuestionsProvider>().questionList.isEmpty
              ? const Loader()
              : SingleChildScrollView(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  child: Column(
                    children: [
                      const QuestionImage(),
                      QuestionTitle(
                          title: context
                              .watch<QuestionsProvider>()
                              .questionList[context
                                  .watch<QuestionsProvider>()
                                  .currentQuestionIndex]
                              .text),
                      const AnswerSet(),
                    ],
                  ),
                )),
    );
  }
}
