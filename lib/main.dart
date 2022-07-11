import 'package:flutter/material.dart';
import 'package:flutter_home_assignment/modules/questions/screens/question_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Brainy',
        theme: ThemeData(
            appBarTheme:
                AppBarTheme(backgroundColor: Colors.white, elevation: 0)),
        home: QuestionScreen());
  }
}
