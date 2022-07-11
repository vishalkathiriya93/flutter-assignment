import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
              if (Platform.isAndroid) {
                SystemNavigator.pop();
              } else if (Platform.isIOS) {
                exit(0);
              }
            },
            child: Text("Yes :("))
      ],
    );
  }
}
