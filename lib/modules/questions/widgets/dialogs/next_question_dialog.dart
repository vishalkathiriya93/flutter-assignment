
import 'package:flutter/material.dart';
import 'package:flutter_home_assignment/modules/questions/providers/questions_provider.dart';
import 'package:flutter_home_assignment/modules/questions/widgets/dialogs/game_over_dialog.dart';
import 'package:provider/provider.dart';

class NextQuestionDialog extends StatelessWidget {
  const NextQuestionDialog({
    Key? key,
    required this.isCorrectAnswer,
  }) : super(key: key);

  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
          isCorrectAnswer ? "You're doing great!" : 'Better luck next time!'),
      content: Text(isCorrectAnswer
          ? 'On to the next one...'
          : "Correct answer was: ${context.read<QuestionsProvider>().questionList[context.watch<QuestionsProvider>().currentQuestionIndex].correctAnswer}"),
      actions: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
              bool canGoToNext =
                  context.read<QuestionsProvider>().goToNextQuestion();
              if (canGoToNext == false) {
                showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (_) => const GameOverDialog());
              }
            },
            icon: Icon(Icons.arrow_right_alt_rounded))
      ],
    );
  }
}
