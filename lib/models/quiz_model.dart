import 'package:flutter/material.dart';

class QuizQuestionsModel extends ChangeNotifier {
  late int quizCategory;
  late String quizDifficulty;

  void setCategory(int category) {
    quizCategory = category;
  }

  void setQuizDifficulty(String difficulty) {
    quizDifficulty = difficulty;
  }
}