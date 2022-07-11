class Question {
  String text = "";
  String correctAnswer = "";
  List<String> incorrectAnswers = [];

  Question({
    required this.text,
    required this.correctAnswer,
    required this.incorrectAnswers
  });
}
