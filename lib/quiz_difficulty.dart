import 'package:flutter/material.dart';

class QuizDifficultyScreen extends StatefulWidget {
  const QuizDifficultyScreen(this.switchScreen, {super.key});

  final void Function(String screen) switchScreen;

  @override
  State<QuizDifficultyScreen> createState() => _QuizDifficultyScreenState();
}

class _QuizDifficultyScreenState extends State<QuizDifficultyScreen> {
  // Active categories
  bool scienceCategory = false;
  bool programmingCategory = false;
  bool historyCategory = false;

  void setScienceCategory() {
    setState(() {
      scienceCategory != scienceCategory;
    });
  }

  void setProgrammingCategory() {
    setState(() {
      programmingCategory != programmingCategory;
    });
  }

  void setHistoryCategory() {
    setState(() {
      historyCategory != historyCategory;
    });
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
                onPressed: () => widget.switchScreen("start-screen"),
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
                    "Choose the quiz categories",
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
                          onPressed: () => setScienceCategory(),
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: scienceCategory
                                ? const Color.fromRGBO(255, 255, 255, 0.5)
                                : null,
                            textStyle: const TextStyle(fontSize: 16),
                          ),
                          child: const Text("Science"),
                        ),
                        const SizedBox(width: 10),
                        OutlinedButton(
                          onPressed: () => setProgrammingCategory(),
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: programmingCategory
                                ? const Color.fromRGBO(255, 255, 255, 0.5)
                                : null,
                            textStyle: const TextStyle(fontSize: 16),
                          ),
                          child: const Text("Programming"),
                        ),
                        const SizedBox(width: 10),
                        OutlinedButton(
                          onPressed: () => setHistoryCategory(),
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: historyCategory
                                ? const Color.fromRGBO(255, 255, 255, 0.5)
                                : null,
                            textStyle: const TextStyle(fontSize: 16),
                          ),
                          child: const Text("History"),
                        ),
                      ],
                    )
                  ]),
                ]),
          ),
        ),
      ]),
    ));
  }
}
