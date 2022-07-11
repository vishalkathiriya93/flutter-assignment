
import 'package:flutter/material.dart';

class QuittingDialog extends StatelessWidget {
  const QuittingDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
          title: Text("Hey wait!"),
          content: Text("Are you sure you want to quit?"),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Yes :("))
          ],
        );
  }
}
