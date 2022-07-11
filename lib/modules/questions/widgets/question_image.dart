import 'package:flutter/material.dart';
import 'package:flutter_home_assignment/utils/app_images.dart';

class QuestionImage extends StatelessWidget {
  const QuestionImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 250,
      width: double.infinity,
      child: Image(image: AssetImage(brainCartoon)),
    );
  }
}
