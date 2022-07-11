import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GameOverDialog extends StatelessWidget {
  const GameOverDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Game Over"),
      content: const Text(
          "Contact the developer to reset the game. He has not implemented it yet! :D"),
      actions: [
        TextButton(
            onPressed: () {
              if (Platform.isAndroid) {
                SystemNavigator.pop();
              } else if (Platform.isIOS) {
                exit(0);
              }
            },
            child: const Text("Thanks!"))
      ],
    );
  }
}
