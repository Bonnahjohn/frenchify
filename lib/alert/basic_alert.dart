import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../quiz/quiz_controller.dart';

class AlertForBasic extends StatelessWidget {
  const AlertForBasic({super.key});

  @override
  Widget build(BuildContext context) {
    final QuizController controller = Get.put(QuizController());
    return ElevatedButton(
      style:
          ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.green)),
      onPressed: () {
        // Handle Restart or Home navigation
        controller.resetQuiz();
      },
      child: Text(
        'Try',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
