// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:frenchify/quiz/greet_model.dart';
import 'package:get/get.dart';

class QuizScreen extends StatelessWidget {
  final QuestionController greet = Get.put(QuestionController());

  Future<bool> _onWillPop() async {
    greet.pauseTimer();
    return (await Get.dialog(
          AlertDialog(
            title: Text('Quit Game'),
            content: Text('Do you want to resume, replay, or exit?'),
            actions: [
              TextButton(
                onPressed: () {
                  greet.resumeTimer();
                  Get.back();
                },
                child: Text('Resume'),
              ),
              TextButton(
                onPressed: () {
                  greet.stopTimer();
                  greet.resetQuiz();
                  Get.back();
                },
                child: Text('Replay'),
              ),
              TextButton(
                onPressed: () {
                  greet.stopTimer();
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
          if (greet.question.isEmpty) {
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
                    'Question: ${greet.currentIndex.value + 1} / ${greet.question.length}'),
                SizedBox(
                  height: 18,
                ),
                LinearProgressIndicator(
                  color: Colors.red,
                  backgroundColor: Colors.grey[300],
                  minHeight: 10,
                  borderRadius: BorderRadius.circular(20),
                  value: (greet.currentIndex.value + 1) / greet.question.length,
                ),
                SizedBox(height: 20),
                Text(
                  greet.question[greet.currentIndex.value].question,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Text('Time left: ${greet.timer.value}',
                    style: TextStyle(fontSize: 20)),
                SizedBox(height: 20),
                Expanded(
                  flex: 4,
                  child: GridView.count(
                    crossAxisSpacing: 8,
                    crossAxisCount: 2,
                    children: greet.question[greet.currentIndex.value].options
                        .map((option) {
                      return GestureDetector(
                        onTap: () => greet.selectAnswer(option),
                        child: Card(
                          color: option == greet.selectedAnswer.value
                              ? (option ==
                                      greet.question[greet.currentIndex.value]
                                          .answer
                                  ? Colors.green
                                  : Colors.red)
                              : Colors.pink.shade50,
                          child: Center(
                            child: Text(
                              option,
                              style: TextStyle(
                                fontSize: 22,
                                color: option == greet.selectedAnswer.value
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
                Text('Score: ${greet.score.value}',
                    style: TextStyle(fontSize: 20)),
              ],
            ),
          );
        }),
      ),
    );
  }
}
