
import 'package:flutter/material.dart';

class BorderedText extends StatelessWidget {
  const BorderedText({
    required this.text,
    this.fontSize = 12,
    this.letterSpacing = 1,
    this.textColor = Colors.white,
    this.borderColor = Colors.black,
    this.borderWidth = 1,
    Key? key,
  }) : super(key: key);
  final String text;
  final double letterSpacing;
  final double fontSize;
  final double borderWidth;
  final Color borderColor;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(
          text,
          style: TextStyle(
            letterSpacing: letterSpacing,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = borderWidth
              ..color = borderColor,
          ),
        ),
        Text(
          text,
          style: TextStyle(letterSpacing: letterSpacing, color: textColor),
        )
      ],
    );
  }
}
