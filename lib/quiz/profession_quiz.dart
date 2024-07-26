// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'package:frenchify/quiz/profession_controller.dart';

import 'package:get/get.dart';

class ProfsScreen extends StatelessWidget {
  final ProfsController profsing = Get.put(ProfsController());

  Future<bool> _onWillPop() async {
    profsing.pauseTimer();
    return (await Get.dialog(
          AlertDialog(
            title: Text('Quit Game'),
            content: Text('Do you want to resume, replay, or exit?'),
            actions: [
              TextButton(
                onPressed: () {
                  profsing.resumeTimer();
                  Get.back();
                },
                child: Text(
                  'Resume',
                  style: TextStyle(color: Colors.orange, fontSize: 16),
                ),
              ),
              TextButton(
                onPressed: () {
                  profsing.stopTimer();
                  profsing.resetQuiz();
                  Get.back();
                },
                child: Text(
                  'Replay',
                  style: TextStyle(color: Colors.green, fontSize: 16),
                ),
              ),
              TextButton(
                onPressed: () {
                  profsing.stopTimer();
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
          if (profsing.profs.isEmpty) {
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
                  'Question: ${profsing.currentIndex.value + 1} / ${profsing.profs.length}',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 16),
                LinearProgressIndicator(
                  color: Colors.red,
                  backgroundColor: Colors.grey[300],
                  minHeight: 12,
                  borderRadius: BorderRadius.circular(8),
                  value:
                      (profsing.currentIndex.value + 1) / profsing.profs.length,
                ),
                SizedBox(height: 24),
                Text(
                  profsing.profs[profsing.currentIndex.value].question,
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16),
                Text(
                  'Time left: ${profsing.timer.value}',
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
                    itemCount: profsing
                        .profs[profsing.currentIndex.value].options.length,
                    itemBuilder: (context, index) {
                      var option = profsing
                          .profs[profsing.currentIndex.value].options[index];
                      return GestureDetector(
                        onTap: () => profsing.selectAnswer(option),
                        child: Card(
                          color: option == profsing.selectedAnswer.value
                              ? (option ==
                                      profsing
                                          .profs[profsing.currentIndex.value]
                                          .answer
                                  ? Colors.green
                                  : Colors.red)
                              : Colors.teal,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          elevation: 5,
                          child: Center(
                            child: Text(
                              option,
                              style: TextStyle(
                                fontSize: 22,
                                color: option == profsing.selectedAnswer.value
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
                  'Score: ${profsing.score.value}',
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
