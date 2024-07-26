// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:frenchify/quiz/number_controller.dart';

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
                  style: TextStyle(color: Colors.orange, fontSize: 16),
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
                  style: TextStyle(color: Colors.green, fontSize: 16),
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
                  style: TextStyle(color: Colors.red, fontSize: 16),
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
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            );
          }
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Question: ${numbering.currentIndex.value + 1} / ${numbering.numbers.length}',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 16),
                LinearProgressIndicator(
                  color: Colors.red,
                  backgroundColor: Colors.grey[300],
                  minHeight: 12,
                  borderRadius: BorderRadius.circular(8),
                  value: (numbering.currentIndex.value + 1) /
                      numbering.numbers.length,
                ),
                SizedBox(height: 24),
                Text(
                  numbering.numbers[numbering.currentIndex.value].question,
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16),
                Text(
                  'Time left: ${numbering.timer.value}',
                  style: TextStyle(fontSize: 22, color: Colors.blueAccent),
                ),
                SizedBox(height: 24),
                Expanded(
                  flex: 4,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: numbering
                        .numbers[numbering.currentIndex.value].options.length,
                    itemBuilder: (context, index) {
                      var option = numbering
                          .numbers[numbering.currentIndex.value].options[index];
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
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          elevation: 5,
                          child: Center(
                            child: Text(
                              option,
                              style: TextStyle(
                                fontSize: 22,
                                color: option == numbering.selectedAnswer.value
                                    ? Colors.white
                                    : Colors.black87,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Score: ${numbering.score.value}',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}