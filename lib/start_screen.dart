import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function(String screen) startQuiz;

  @override
  Widget build(context) {
    return (Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            height: 300,
            color: const Color.fromRGBO(255, 255, 255, 0.5),
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            "Welcome to the Impossible Quiz",
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.w300),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: () => startQuiz("categories-screen"),
            style: OutlinedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 16),
              foregroundColor: Colors.white,
              fixedSize: const Size(160, 60),
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text("Start Quiz"),
          )
        ],
      ),
    ));
  }
}
