// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'package:frenchify/quiz/number_controller.dart';

import 'package:get/get.dart';

class NumberScreen extends StatelessWidget {
  final NumberController numbering = Get.put(NumberController());

  Future<bool> _onWillPop() async {
    numbering.pauseTimer();
    return (await Get.dialog(
          AlertDialog(
            title: Text('Quit Game'),
            content: Text('Do you want to resume, replay, or exit?'),
            actions: [
              TextButton(
                onPressed: () {
                  numbering.resumeTimer();
                  Get.back();
                },
                child: Text(
                  'Resume',
                  style: TextStyle(color: Colors.orange),
                ),
              ),
              TextButton(
                onPressed: () {
                  numbering.stopTimer();
                  numbering.resetQuiz();
                  Get.back();
                },
                child: Text(
                  'Replay',
                  style: TextStyle(color: Colors.green),
                ),
              ),
              TextButton(
                onPressed: () {
                  numbering.stopTimer();
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
          if (numbering.numbers.isEmpty) {
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
                    'Question: ${numbering.currentIndex.value + 1} / ${numbering.numbers.length}'),
                SizedBox(
                  height: 18,
                ),
                LinearProgressIndicator(
                  color: Colors.red,
                  backgroundColor: Colors.grey[300],
                  minHeight: 10,
                  borderRadius: BorderRadius.circular(20),
                  value: (numbering.currentIndex.value + 1) /
                      numbering.numbers.length,
                ),
                SizedBox(height: 20),
                Text(
                  numbering.numbers[numbering.currentIndex.value].question,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Text('Time left: ${numbering.timer.value}',
                    style: TextStyle(fontSize: 20)),
                SizedBox(height: 20),
                Expanded(
                  flex: 4,
                  child: GridView.count(
                    crossAxisSpacing: 8,
                    crossAxisCount: 2,
                    children: numbering
                        .numbers[numbering.currentIndex.value].options
                        .map((option) {
                      return GestureDetector(
                        onTap: () => numbering.selectAnswer(option),
                        child: Card(
                          color: option == numbering.selectedAnswer.value
                              ? (option ==
                                      numbering
                                          .numbers[numbering.currentIndex.value]
                                          .answer
                                  ? Colors.green
                                  : Colors.red)
                              : Colors.cyan,
                          child: Center(
                            child: Text(
                              option,
                              style: TextStyle(
                                fontSize: 22,
                                color: option == numbering.selectedAnswer.value
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
                Text('Score: ${numbering.score.value}',
                    style: TextStyle(fontSize: 20)),
              ],
            ),
          );
        }),
      ),
    );
  }
}
