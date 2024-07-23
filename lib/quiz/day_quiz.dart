// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'days_model.dart';

class FlashCardQuizScreen extends StatelessWidget {
  final FlashCardController controller = Get.put(FlashCardController());

  Future<bool> _onWillPop() async {
    controller.pauseTimer();
    return (await Get.dialog(
          AlertDialog(
            title: Text('Quit Game'),
            content: Text('Do you want to resume, replay, or exit?'),
            actions: [
              TextButton(
                onPressed: () {
                  controller.resumeTimer();
                  Get.back();
                },
                child: Text('Resume'),
              ),
              TextButton(
                onPressed: () {
                  controller.stopTimer();
                  controller.resetQuiz();
                  Get.back();
                },
                child: Text('Replay'),
              ),
              TextButton(
                onPressed: () {
                  controller.stopTimer();
                  Get.back();
                  Get.back();
                },
                child: Text('Exit'),
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
          if (controller.flashCards.isEmpty) {
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
                    'Question: ${controller.currentIndex.value + 1} / ${controller.flashCards.length}'),
                SizedBox(
                  height: 18,
                ),
                LinearProgressIndicator(
                  color: Colors.red,
                  backgroundColor: Colors.grey[300],
                  minHeight: 10,
                  borderRadius: BorderRadius.circular(20),
                  value: (controller.currentIndex.value + 1) /
                      controller.flashCards.length,
                ),
                SizedBox(height: 20),
                Text(
                  controller.flashCards[controller.currentIndex.value].question,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Text('Time left: ${controller.timer.value}',
                    style: TextStyle(fontSize: 20)),
                SizedBox(height: 20),
                Expanded(
                  flex: 4,
                  child: GridView.count(
                    crossAxisSpacing: 8,
                    crossAxisCount: 2,
                    children: controller
                        .flashCards[controller.currentIndex.value].options
                        .map((option) {
                      return GestureDetector(
                        onTap: () => controller.selectAnswer(option),
                        child: Card(
                          color: option == controller.selectedAnswer.value
                              ? (option ==
                                      controller
                                          .flashCards[
                                              controller.currentIndex.value]
                                          .answer
                                  ? Colors.green
                                  : Colors.red)
                              : Colors.pink.shade50,
                          child: Center(
                            child: Text(
                              option,
                              style: TextStyle(
                                fontSize: 22,
                                color: option == controller.selectedAnswer.value
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
                Text('Score: ${controller.score.value}',
                    style: TextStyle(fontSize: 20)),
              ],
            ),
          );
        }),
      ),
    );
  }
}
