import 'package:flutter/material.dart';
import 'package:flutter_home_assignment/modules/questions/enums/question_screen_state.dart';
import 'package:flutter_home_assignment/modules/questions/models/question.dart';
import 'package:flutter_home_assignment/providers/questions.dart';

class QuestionsProvider extends ChangeNotifier {
  List<Question> _questionList = [];
  int _currentQuestionIndex = 0;
  String _choice = "";
  QuestionState _questionState = QuestionState.initial;

  List<Question> get questionList => _questionList;
  int get currentQuestionIndex => _currentQuestionIndex;
  String get choice => _choice;
  QuestionState get questionState => _questionState;

  set questionList(List<Question> value) {
    _questionList = value;
    notifyListeners();
  }

  set currentQuestionIndex(int value) {
    _currentQuestionIndex = value;
    notifyListeners();
  }

  set questionState(QuestionState value) {
    _questionState = value;
    notifyListeners();
  }

  void makeChoice(
    String userChoice,
  ) {
    _choice = userChoice;
    questionState = QuestionState.chosen;
  }

  bool goToNextQuestion() {
    if (currentQuestionIndex==questionList.length-1) {
      return false;
    }
    questionState = QuestionState.initial;
    currentQuestionIndex++;
    return true;
  }

  void getQuestions() {
    _questionList.clear();
    for (Map<String, dynamic> element in QuestionsData.questions) {
      _questionList.add(Question(
          correctAnswer: element["correct"],
          incorrectAnswers: element["incorrect"],
          text: element["text"]));
    }
  }
}
