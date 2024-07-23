import 'dart:async';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'model.dart';

class QuizController extends GetxController {
  final QuizState state = QuizState();
  final storage = GetStorage();

  @override
  void onInit() {
    super.onInit();
    loadQuizState();
    startTimer();
  }

  void loadQuizState() {
    state.currentQuestionIndex.value =
        storage.read('currentQuestionIndex') ?? 0;
    state.score.value = storage.read('score') ?? 0;
    state.secondsLeft.value = storage.read('secondsLeft') ?? 60;
  }

  void saveQuizState() {
    storage.write('currentQuestionIndex', state.currentQuestionIndex.value);
    storage.write('score', state.score.value);
    storage.write('secondsLeft', state.secondsLeft.value);
  }

  void startTimer() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (state.secondsLeft.value > 0) {
        state.secondsLeft.value--;
      } else {
        timer.cancel();
        completeQuiz();
      }
    });
  }

  void answerQuestion(int selectedIndex) {
    state.selectedAnswerIndex!.value = selectedIndex;
    state.showAnswerResult.value = true;

    if (selectedIndex ==
        state.questions[state.currentQuestionIndex.value].answerIndex) {
      state.score.value++;
    }

    Future.delayed(Duration(seconds: 2), () {
      state.showAnswerResult.value = false;
      state.selectedAnswerIndex!.value = -1;
      if (state.currentQuestionIndex.value < state.questions.length - 1) {
        state.currentQuestionIndex.value++;
      } else {
        completeQuiz();
      }
      saveQuizState();
    });
  }

  void completeQuiz() {
    state.isQuizCompleted.value = true;
    saveQuizState();
  }

  void resetQuiz() {
    state.currentQuestionIndex.value = 0;
    state.score.value = 0;
    state.secondsLeft.value = 60;
    state.isQuizCompleted.value = false;
    state.selectedAnswerIndex!.value = -1;
    state.shuffleQuestionsAndOptions();
    state.showAnswerResult.value = false;

    saveQuizState();
    startTimer();
  }
}
