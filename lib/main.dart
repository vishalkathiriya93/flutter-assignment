import 'package:flutter/material.dart';
import 'package:flutter_home_assignment/modules/questions/providers/questions_provider.dart';
import 'package:flutter_home_assignment/utils/theme.dart';
import 'package:provider/provider.dart';
import 'routes/routes.dart' as route;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<QuestionsProvider>(
            create: (_) => QuestionsProvider()),
      ],
      child: MaterialApp(
        title: 'Brainy',
        theme: themeData,
        onGenerateRoute: route.controller,
        initialRoute: route.questionScreen,
      ),
    );
  }
}
