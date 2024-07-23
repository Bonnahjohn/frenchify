import 'package:flutter/material.dart';
import 'package:frenchify/alert/basic_alert.dart';
import 'package:get/get.dart';
import 'quiz_controller.dart';

class QuizScreen extends StatelessWidget {
  final QuizController controller = Get.put(QuizController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FlashCard Quiz'),
      ),
      body: Obx(() {
        if (controller.state.isQuizCompleted.value) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Quiz Completed!', style: TextStyle(fontSize: 24)),
                Text('You Scored: ${controller.state.score.value}',
                    style: TextStyle(fontSize: 24)),
                SizedBox(height: 18),
                AlertForBasic(),
                TextButton(
                  onPressed: () {
                    controller.resetQuiz();
                  },
                  child: Text('Replay', style: TextStyle(color: Colors.green)),
                ),
                TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text('Exit Quiz', style: TextStyle(color: Colors.red)),
                ),
              ],
            ),
          );
        }

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildStatCard(
                        'Question',
                        '${controller.state.currentQuestionIndex.value + 1}/${controller.state.questions.length}',
                        Colors.red),
                    _buildStatCard('Time Left',
                        '${controller.state.secondsLeft.value}', Colors.red),
                    _buildStatCard(
                        'Score', '${controller.state.score.value}', Colors.red),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    controller
                        .state
                        .questions[controller.state.currentQuestionIndex.value]
                        .question,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                ...controller
                    .state
                    .questions[controller.state.currentQuestionIndex.value]
                    .options
                    .asMap()
                    .entries
                    .map((entry) {
                  int idx = entry.key;
                  String option = entry.value;
                  Color btnColor;

                  if (controller.state.showAnswerResult.value) {
                    if (idx == controller.state.selectedAnswerIndex!.value) {
                      btnColor = idx ==
                              controller
                                  .state
                                  .questions[controller
                                      .state.currentQuestionIndex.value]
                                  .answerIndex
                          ? Colors.green
                          : Colors.red;
                    } else if (idx ==
                        controller
                            .state
                            .questions[
                                controller.state.currentQuestionIndex.value]
                            .answerIndex) {
                      btnColor = Colors.green;
                    } else {
                      btnColor = Colors.grey.shade400;
                    }
                  } else {
                    btnColor = Colors.cyan;
                  }

                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: btnColor),
                    onPressed: () {
                      if (!controller.state.showAnswerResult.value) {
                        controller.answerQuestion(idx);
                      }
                    },
                    child: Text(option, style: TextStyle(color: Colors.white)),
                  );
                }).toList(),
              ],
            ),
          ),
        );
      }),
    );
  }

  Widget _buildStatCard(String title, String value, Color textColor) {
    return Card(
      child: Container(
        width: 100,
        height: 80,
        color: Colors.grey.shade200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title, style: TextStyle(color: Colors.grey)),
            SizedBox(height: 20),
            Text(value, style: TextStyle(fontSize: 25, color: textColor)),
          ],
        ),
      ),
    );
  }
}
