import 'package:flutter/material.dart';
import 'package:flutter_home_assignment/modules/questions/screens/question_screen.dart';

const String questionScreen = 'questionScreen';

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case questionScreen:
      return MaterialPageRoute(builder: (context) => const QuestionScreen());

    default:
      throw ("This route doesn't exist");
  }
}
