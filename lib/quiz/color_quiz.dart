// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:frenchify/quiz/color_controller.dart';

import 'package:get/get.dart';

class Colourcreen extends StatelessWidget {
  final ColorController coloring = Get.put(ColorController());

  Future<bool> _onWillPop() async {
    coloring.pauseTimer();
    return (await Get.dialog(
          AlertDialog(
            title: Text('Quit Game'),
            content: Text('Do you want to resume, replay, or exit?'),
            actions: [
              TextButton(
                onPressed: () {
                  coloring.resumeTimer();
                  Get.back();
                },
                child: Text(
                  'Resume',
                  style: TextStyle(color: Colors.orange),
                ),
              ),
              TextButton(
                onPressed: () {
                  coloring.stopTimer();
                  coloring.resetQuiz();
                  Get.back();
                },
                child: Text(
                  'Replay',
                  style: TextStyle(color: Colors.green),
                ),
              ),
              TextButton(
                onPressed: () {
                  coloring.stopTimer();
                  Get.back();
                  Get.back();
                },
                child: Text(
                  'Exit',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
        )) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(100, 149, 237, 1),
          title: Text('FlashCard Quiz'),
        ),
        body: Obx(() {
          if (coloring.colours.isEmpty) {
            return Center(
              child: Text(
                'No flashcards available. Please add some flashcards.',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
            );
          }
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                    'Question: ${coloring.currentIndex.value + 1} / ${coloring.colours.length}'),
                SizedBox(
                  height: 18,
                ),
                LinearProgressIndicator(
                  color: Colors.red,
                  backgroundColor: Colors.grey[300],
                  minHeight: 10,
                  borderRadius: BorderRadius.circular(20),
                  value: (coloring.currentIndex.value + 1) /
                      coloring.colours.length,
                ),
                SizedBox(height: 20),
                Text(
                  coloring.colours[coloring.currentIndex.value].question,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Text('Time left: ${coloring.timer.value}',
                    style: TextStyle(fontSize: 20)),
                SizedBox(height: 20),
                Expanded(
                  flex: 4,
                  child: GridView.count(
                    crossAxisSpacing: 8,
                    crossAxisCount: 2,
                    children: coloring
                        .colours[coloring.currentIndex.value].options
                        .map((option) {
                      return GestureDetector(
                        onTap: () => coloring.selectAnswer(option),
                        child: Card(
                          color: option == coloring.selectedAnswer.value
                              ? (option ==
                                      coloring
                                          .colours[coloring.currentIndex.value]
                                          .answer
                                  ? Colors.green
                                  : Colors.red)
                              : Colors.cyan,
                          child: Center(
                            child: Text(
                              option,
                              style: TextStyle(
                                fontSize: 22,
                                color: option == coloring.selectedAnswer.value
                                    ? Colors.white
                                    : null,
                              ),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(height: 20),
                Text('Score: ${coloring.score.value}',
                    style: TextStyle(fontSize: 20)),
              ],
            ),
          );
        }),
      ),
    );
  }
}
