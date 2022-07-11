
import 'package:flutter/material.dart';
import 'package:flutter_home_assignment/widgets/borderedText.dart';

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
              onPressed: () {},
            ),
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
                    style: TextStyle(color: Colors.grey[700]),
                  )
                ],
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              Expanded(
                // current question
                flex: 5,
                child: Container(
                  height: 6,
                  color: Colors.red,
                ),
              ),
              Expanded(
                  // questions remaining
                  flex: 10,
                  child: Container(
                    color: Colors.grey[300],
                    height: 6,
                  ))
            ],
          ),
        ),
        Container(
            color: Colors.grey[200],
            padding: EdgeInsets.all(8),
            child: const BorderedText(
              text: "Question 3",
              borderWidth: 3.5,
              letterSpacing: 2,
            ))
      ],
    );
  }
}
