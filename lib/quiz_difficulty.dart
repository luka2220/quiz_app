import 'package:flutter/material.dart';
import 'package:quiz_app/models/quiz_model.dart';

class QuizDifficulty extends StatelessWidget {
  // Constructor initialized it's super constructor passing the key widget parameter to the super class
  const QuizDifficulty(this.questionsModel, this.switchScreen, {super.key});

  final QuizQuestionsModel questionsModel;
  final void Function(String) switchScreen;

  void setQuizDifficulty(String difficulty) {
    questionsModel.setQuizDifficulty(difficulty);
  }

  @override
  Widget build(context) {
    return (SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 80, left: 30),
              child: Column(children: [
                IconButton(
                  onPressed: () => switchScreen("categories-screen"),
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
              ]),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 300),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Choose the quiz difficulty',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.white,
                          textStyle: const TextStyle(fontSize: 16),
                        ),
                        child: const Text('Easy'),
                      ),
                      const SizedBox(width: 10),
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.white,
                          textStyle: const TextStyle(fontSize: 16),
                        ),
                        child: const Text('Medium'),
                      ),
                      const SizedBox(width: 10),
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.white,
                          textStyle: const TextStyle(fontSize: 16),
                        ),
                        child: const Text('Hard'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
