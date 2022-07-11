import 'package:flutter/material.dart';
import 'package:flutter_home_assignment/modules/questions/models/question.dart';
import 'package:flutter_home_assignment/providers/questions.dart';

class QuestionsProvider extends ChangeNotifier {
  List<Question> _questionList = [];
  Question? _currentQuestion;
  int _currentQuestionIndex = 0;

  Question? get currentQuestion => _currentQuestion;

  set currentQuestion(Question? value) {
    _currentQuestion = value;
    notifyListeners();
  }

  int get currentQuestionIndex => _currentQuestionIndex;

  set currentQuestionIndex(int value) {
    _currentQuestionIndex = value;
    notifyListeners();
  }

  List<Question> get questionList => _questionList;

  set questionList(List<Question> value) {
    _questionList = value;
    notifyListeners();
  }

  getQuestions() {
    _questionList.clear();
    QuestionsData.questions.forEach((element) {
      _questionList.add(Question(
          correctAnswer: element["correct"],
          incorrectAnswers: element["incorrect"],
          text: element["text"]));
    });
    _currentQuestion= questionList[0];
  }
}
