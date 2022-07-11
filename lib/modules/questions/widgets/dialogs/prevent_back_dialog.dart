import 'package:flutter/material.dart';

class PreventBackDialog extends StatelessWidget {
  const PreventBackDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Nope"),
      content: const Text("You cannot go back to change your answer!"),
      actions: [
        TextButton(
            onPressed: () => Navigator.pop(context), child: const Text("Okay!"))
      ],
    );
  }
}
