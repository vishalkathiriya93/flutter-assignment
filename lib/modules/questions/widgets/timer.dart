
import 'package:flutter/material.dart';

class TimerWidget extends StatelessWidget {
  const TimerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              height: 6,
              color: Colors.green[300],
            ),
          ),
          Expanded(
              flex: 10,
              child: Container(
                color: Colors.grey[300],
                height: 6,
              ))
        ],
      ),
    );
  }
}
