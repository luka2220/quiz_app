import 'package:flutter/material.dart';
import 'package:quiz_app/models/quiz_model.dart';

class QuizCategoryScreen extends StatelessWidget {
  // Constructor initialized it's super constructor passing the key widget parameter to the super class
  const QuizCategoryScreen(this.questionsModel, this.switchScreen, {Key? key})
      : super(key: key);

  final QuizQuestionsModel questionsModel;
  final void Function(String screen) switchScreen;

  void setCategoryType(int numCategory) {
    questionsModel.setCategory(numCategory);
    switchScreen("quiz-difficulty-screen");
  }

  @override
  Widget build(context) {
    return (SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Stack(children: [
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: 80, left: 30),
            child: Column(children: [
              IconButton(
                onPressed: () => switchScreen("start-screen"),
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
                    "Choose a category to continue",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(height: 25),
                  Column(children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        OutlinedButton(
                          onPressed: () => setCategoryType(18),
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.white,
                            textStyle: const TextStyle(fontSize: 16),
                          ),
                          child: const Text("Computers"),
                        ),
                        const SizedBox(width: 10),
                        OutlinedButton(
                          onPressed: () => setCategoryType(19),
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.white,
                            textStyle: const TextStyle(fontSize: 16),
                          ),
                          child: const Text("Math"),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        OutlinedButton(
                          onPressed: () => setCategoryType(9),
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.white,
                            textStyle: const TextStyle(fontSize: 16),
                          ),
                          child: const Text("General Knowledge"),
                        ),
                        const SizedBox(width: 10),
                        OutlinedButton(
                          onPressed: () => setCategoryType(21),
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.white,
                            textStyle: const TextStyle(fontSize: 16),
                          ),
                          child: const Text("Sports"),
                        ),
                      ],
                    ),
                    Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OutlinedButton(
                            onPressed: () => setCategoryType(22),
                            style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.white,
                              textStyle: const TextStyle(fontSize: 16),
                            ),
                            child: const Text("Geography"),
                          ),
                          const SizedBox(width: 10),
                          OutlinedButton(
                            onPressed: () => setCategoryType(11),
                            style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.white,
                              textStyle: const TextStyle(fontSize: 16),
                            ),
                            child: const Text("Film"),
                          ),
                          const SizedBox(width: 10),
                          OutlinedButton(
                            onPressed: () => setCategoryType(25),
                            style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.white,
                              textStyle: const TextStyle(fontSize: 16),
                            ),
                            child: const Text("Art"),
                          ),
                        ]),
                    Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OutlinedButton(
                            onPressed: () => setCategoryType(23),
                            style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.white,
                              textStyle: const TextStyle(fontSize: 16),
                            ),
                            child: const Text("History"),
                          ),
                          const SizedBox(width: 10),
                          OutlinedButton(
                            onPressed: () => setCategoryType(10),
                            style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.white,
                              textStyle: const TextStyle(fontSize: 16),
                            ),
                            child: const Text("Books"),
                          ),
                          const SizedBox(width: 10),
                          OutlinedButton(
                            onPressed: () => setCategoryType(27),
                            style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.white,
                              textStyle: const TextStyle(fontSize: 16),
                            ),
                            child: const Text("Animals"),
                          ),
                        ])
                  ]),
                ]),
          ),
        ),
      ]),
    ));
  }
}
