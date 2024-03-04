import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_difficulty.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  // Storing the StartScreen widget in a variable
  var activeScreen = 'start-screen';

  // Method that navigates to the currently active screen
  void switchScreen(String screen) {
    setState(() {
      activeScreen = screen;
    });
  }

  @override
  Widget build(context) {
    Widget? screenWidget;

    if (activeScreen == 'start-screen') {
      screenWidget = StartScreen(switchScreen);
    } else if (activeScreen == 'difficulty-screen') {
      screenWidget = QuizDifficultyScreen(switchScreen);
    } else if (activeScreen == 'quiz-screen') {
      
    }

    return MaterialApp(
      home: Scaffold(
          body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 78, 13, 151),
            Color.fromARGB(255, 107, 15, 168)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: screenWidget,
      )),
    );
  }
}
