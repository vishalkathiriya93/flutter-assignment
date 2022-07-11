import 'package:flutter/material.dart';
import 'package:flutter_home_assignment/modules/questions/providers/questions_provider.dart';
import 'package:flutter_home_assignment/modules/questions/widgets/dialogs/quiting_dialog.dart';
import 'package:flutter_home_assignment/modules/questions/widgets/timer.dart';
import 'package:flutter_home_assignment/widgets/borderedText.dart';
import 'package:provider/provider.dart';

class QuestionsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const QuestionsAppBar({
    Key? key,
    this.height = kToolbarHeight + 38,
  }) : super(key: key);

  final double height;

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: IconButton(
                icon: Icon(
                  Icons.close,
                  color: Colors.grey[700],
                ),
                onPressed: () => showDialog(
                    context: context, builder: (_) => const QuittingDialog())),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.star,
                        color: Colors.yellow,
                      )),
                  Text(
                    "100",
                    style: TextStyle(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.w800,
                        fontSize: 16),
                  )
                ],
              ),
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: TimerWidget(),
        ),
        Container(
            color: Colors.grey[200],
            padding: EdgeInsets.all(8),
            child: BorderedText(
              text:
                  "Question ${context.read<QuestionsProvider>().currentQuestionIndex + 1}",
              borderWidth: 3,
              letterSpacing: 2,
            ))
      ],
    );
  }
}
