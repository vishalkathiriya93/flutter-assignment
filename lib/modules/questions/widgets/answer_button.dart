import 'package:flutter/material.dart';
import 'package:flutter_home_assignment/modules/questions/enums/question_screen_state.dart';
import 'package:flutter_home_assignment/modules/questions/providers/questions_provider.dart';
import 'package:flutter_home_assignment/modules/questions/widgets/dialogs/next_question_dialog.dart';
import 'package:flutter_home_assignment/modules/questions/widgets/dialogs/prevent_back_dialog.dart';
import 'package:provider/provider.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    required this.title,
    Key? key,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    Color backgroundColor = Colors.indigo[600]!;
    bool isCorrectAnswer = false;
    if (title ==
        context
            .read<QuestionsProvider>()
            .questionList[
                context.watch<QuestionsProvider>().currentQuestionIndex]
            .correctAnswer) {
      isCorrectAnswer = true;
    }
    try {
      if (context.watch<QuestionsProvider>().questionState ==
          QuestionState.chosen) {
        backgroundColor = Colors.indigo[600]!;
        if (isCorrectAnswer) {
          backgroundColor = Colors.orange[500]!;
        }
        if (isCorrectAnswer &&
            title == context.read<QuestionsProvider>().choice) {
          backgroundColor = Colors.green[300]!;
        } else if (title == context.read<QuestionsProvider>().choice) {
          backgroundColor = Colors.red[300]!;
        }
      }
    } catch (e) {}
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      width: double.infinity,
      height: 50,
      child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
          ),
          onPressed: () {
            context.read<QuestionsProvider>().makeChoice(title);
            showDialog(
                barrierDismissible: false,
                context: context,
                builder: (_) => WillPopScope(
                      onWillPop: () async {
                        showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (_) => const PreventBackDialog());
                        return false;
                      },
                      child:
                          NextQuestionDialog(isCorrectAnswer: isCorrectAnswer),
                    ));
          },
          child: FittedBox(
            child: Text(
              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w800),
            ),
          )),
    );
  }
}
