import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';
import 'dart:math';

class Question {
  String question;
  String answer;
  List<String> options;

  Question(
      {required this.question, required this.answer, required this.options});

  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
      question: json['question'],
      answer: json['answer'],
      options: List<String>.from(json['options']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'question': question,
      'answer': answer,
      'options': options,
    };
  }

  void shuffleOptions() {
    options.shuffle();
  }
}

class TimeController extends GetxController {
  var allFlashCards = <Question>[].obs;
  var times = <Question>[].obs;
  var currentIndex = 0.obs;
  var score = 0.obs;
  var timer = 15.obs;
  Timer? _timer;
  var selectedAnswer = ''.obs;
  var isPaused = false.obs;

  @override
  void onInit() {
    super.onInit();
    loadFlashCards();
    startTimer();
  }

  void loadFlashCards() {
    // Add sample flashcards
    allFlashCards.assignAll([
      Question(
        question: 'What is "January" in French?',
        answer: 'Janvier',
        options: ['Janvier', 'Février', 'Mars', 'Avril'],
      ),
      Question(
        question: 'What is "February" in French?',
        answer: 'Février',
        options: ['Février', 'Janvier', 'Mars', 'Avril'],
      ),
      Question(
        question: 'What is "March" in French?',
        answer: 'Mars',
        options: ['Mars', 'Avril', 'Mai', 'Juin'],
      ),
      Question(
        question: 'What is "April" in French?',
        answer: 'Avril',
        options: ['Avril', 'Mars', 'Mai', 'Juin'],
      ),
      Question(
        question: 'What is "May" in French?',
        answer: 'Mai',
        options: ['Mai', 'Juin', 'Juillet', 'Août'],
      ),
      Question(
        question: 'What is "June" in French?',
        answer: 'Juin',
        options: ['Juin', 'Mai', 'Juillet', 'Août'],
      ),
      Question(
        question: 'What is "July" in French?',
        answer: 'Juillet',
        options: ['Juillet', 'Août', 'Septembre', 'Octobre'],
      ),
      Question(
        question: 'What is "August" in French?',
        answer: 'Août',
        options: ['Août', 'Juillet', 'Septembre', 'Octobre'],
      ),
      Question(
        question: 'What is "September" in French?',
        answer: 'Septembre',
        options: ['Septembre', 'Août', 'Octobre', 'Novembre'],
      ),
      Question(
        question: 'What is "October" in French?',
        answer: 'Octobre',
        options: ['Octobre', 'Septembre', 'Novembre', 'Décembre'],
      ),
      Question(
        question: 'What is "November" in French?',
        answer: 'Novembre',
        options: ['Novembre', 'Octobre', 'Décembre', 'Janvier'],
      ),
      Question(
        question: 'What is "December" in French?',
        answer: 'Décembre',
        options: ['Décembre', 'Novembre', 'Janvier', 'Février'],
      ),
      Question(
        question: 'What is "Monday" in French?',
        answer: 'Lundi',
        options: ['Lundi', 'Mardi', 'Mercredi', 'Jeudi'],
      ),
      Question(
        question: 'What is "Tuesday" in French?',
        answer: 'Mardi',
        options: ['Mardi', 'Lundi', 'Mercredi', 'Jeudi'],
      ),
      Question(
        question: 'What is "Wednesday" in French?',
        answer: 'Mercredi',
        options: ['Mercredi', 'Jeudi', 'Vendredi', 'Samedi'],
      ),
      Question(
        question: 'What is "Thursday" in French?',
        answer: 'Jeudi',
        options: ['Jeudi', 'Mercredi', 'Vendredi', 'Samedi'],
      ),
      Question(
        question: 'What is "Friday" in French?',
        answer: 'Vendredi',
        options: ['Vendredi', 'Jeudi', 'Samedi', 'Dimanche'],
      ),
      Question(
        question: 'What is "Saturday" in French?',
        answer: 'Samedi',
        options: ['Samedi', 'Vendredi', 'Dimanche', 'Lundi'],
      ),
      Question(
        question: 'What is "Sunday" in French?',
        answer: 'Dimanche',
        options: ['Dimanche', 'Samedi', 'Lundi', 'Mardi'],
      ),
      Question(
        question: 'What is "Morning" in French?',
        answer: 'Matin',
        options: ['Matin', 'Après-midi', 'Soir', 'Nuit'],
      ),
      Question(
        question: 'What is "Afternoon" in French?',
        answer: 'Après-midi',
        options: ['Après-midi', 'Matin', 'Soir', 'Nuit'],
      ),
      Question(
        question: 'What is "Evening" in French?',
        answer: 'Soir',
        options: ['Soir', 'Matin', 'Après-midi', 'Nuit'],
      ),
      Question(
        question: 'What is "Night" in French?',
        answer: 'Nuit',
        options: ['Nuit', 'Matin', 'Après-midi', 'Soir'],
      ),
      Question(
        question: 'What is "Today" in French?',
        answer: 'Aujourd\'hui',
        options: ['Aujourd\'hui', 'Demain', 'Hier', 'Après-demain'],
      ),
      Question(
        question: 'What is "Tomorrow" in French?',
        answer: 'Demain',
        options: ['Demain', 'Aujourd\'hui', 'Hier', 'Après-demain'],
      ),
      Question(
        question: 'What is "Yesterday" in French?',
        answer: 'Hier',
        options: ['Hier', 'Aujourd\'hui', 'Demain', 'Après-demain'],
      ),
      Question(
        question: 'What is "The day after tomorrow" in French?',
        answer: 'Après-demain',
        options: ['Après-demain', 'Demain', 'Hier', 'Aujourd\'hui'],
      ),
      Question(
        question: 'What is "Last week" in French?',
        answer: 'La semaine dernière',
        options: [
          'La semaine dernière',
          'La semaine prochaine',
          'Cette semaine',
          'La semaine passée'
        ],
      ),
      Question(
        question: 'What is "Next week" in French?',
        answer: 'La semaine prochaine',
        options: [
          'La semaine prochaine',
          'La semaine dernière',
          'Cette semaine',
          'La semaine passée'
        ],
      ),
      Question(
        question: 'What is "Last month" in French?',
        answer: 'Le mois dernier',
        options: [
          'Le mois dernier',
          'Le mois prochain',
          'Ce mois-ci',
          'Le mois passé'
        ],
      ),
      Question(
        question: 'What is "Next month" in French?',
        answer: 'Le mois prochain',
        options: [
          'Le mois prochain',
          'Le mois dernier',
          'Ce mois-ci',
          'Le mois passé'
        ],
      ),
      Question(
        question: 'What is "Last year" in French?',
        answer: 'L\'année dernière',
        options: [
          'L\'année dernière',
          'L\'année prochaine',
          'Cette année',
          'L\'année passée'
        ],
      ),
      Question(
        question: 'What is "Next year" in French?',
        answer: 'L\'année prochaine',
        options: [
          'L\'année prochaine',
          'L\'année dernière',
          'Cette année',
          'L\'année passée'
        ],
      ),
      Question(
        question: 'What is "Today is Monday" in French?',
        answer: 'Aujourd\'hui, c\'est lundi',
        options: [
          'Aujourd\'hui, c\'est lundi',
          'Demain, c\'est lundi',
          'Hier, c\'était lundi',
          'Après-demain, c\'est lundi'
        ],
      ),
      Question(
        question: 'What is "It\'s noon" in French?',
        answer: 'Il est midi',
        options: [
          'Il est midi',
          'Il est minuit',
          'Il est matin',
          'Il est soir'
        ],
      ),
      Question(
        question: 'What is "It\'s midnight" in French?',
        answer: 'Il est minuit',
        options: [
          'Il est minuit',
          'Il est midi',
          'Il est matin',
          'Il est soir'
        ],
      ),
      Question(
        question: 'What is "It\'s 10 o\'clock" in French?',
        answer: 'Il est dix heures',
        options: [
          'Il est dix heures',
          'Il est neuf heures',
          'Il est onze heures',
          'Il est midi'
        ],
      ),
      Question(
        question: 'What is "It\'s half past three" in French?',
        answer: 'Il est trois heures et demie',
        options: [
          'Il est trois heures et demie',
          'Il est trois heures',
          'Il est trois heures et quart',
          'Il est trois heures moins le quart'
        ],
      ),
      Question(
        question: 'What is "It\'s a quarter past five" in French?',
        answer: 'Il est cinq heures et quart',
        options: [
          'Il est cinq heures et quart',
          'Il est cinq heures',
          'Il est cinq heures et demie',
          'Il est cinq heures moins le quart'
        ],
      ),
      Question(
        question: 'What is "It\'s a quarter to seven" in French?',
        answer: 'Il est sept heures moins le quart',
        options: [
          'Il est sept heures moins le quart',
          'Il est sept heures',
          'Il est sept heures et quart',
          'Il est sept heures et demie'
        ],
      ),
    ]);
    ;

    for (var question in allFlashCards) {
      question.shuffleOptions();
    }
    selectRandomFlashCards();
  }

  void selectRandomFlashCards() {
    var random = Random();

    var shuffledFlashCards = allFlashCards.toList()..shuffle(random);
    times.assignAll(shuffledFlashCards.take(10).toList());
    print('Selected FlashCards: ${times.length}');
  }

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (!isPaused.value && this.timer.value > 0) {
        this.timer.value--;
      } else if (this.timer.value == 0) {
        nextCard();
      }
    });
  }

  void resetTimer() {
    timer.value = 10;
  }

  void stopTimer() {
    _timer?.cancel();
  }

  void pauseTimer() {
    isPaused.value = true;
  }

  void resumeTimer() {
    isPaused.value = false;
  }

  void nextCard() {
    stopTimer();
    resetTimer();
    selectedAnswer.value = '';
    if (currentIndex < times.length - 1) {
      currentIndex++;
      startTimer();
    } else {
      print('Quiz Completed! Showing dialog...');
      Get.defaultDialog(
        title: 'Quiz Completed',
        middleText:
            'You have completed the quiz! You scored ${score.value} out of ${times.length}',
        actions: [
          TextButton(
            onPressed: () {
              Get.back(); // Close the dialog
              resetQuiz();
            },
            child: Text(
              'Replay',
              style: TextStyle(color: Colors.green),
            ),
          ),
          TextButton(
            onPressed: () {
              Get.back(); // Close the dialog
              Get.back(); // Exit to the previous screen
            },
            child: Text(
              'Exit',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      );
    }
  }

  void selectAnswer(String answer) {
    selectedAnswer.value = answer;
    if (answer == times[currentIndex.value].answer) {
      score++;
      Get.snackbar('Correct!', 'Good job!', duration: Duration(seconds: 1));
    } else {
      Get.snackbar('Incorrect', 'Try again!', duration: Duration(seconds: 1));
    }
    Future.delayed(Duration(seconds: 1), () {
      nextCard();
    });
  }

  void mix(List<String> options) {
    options.shuffle();
  }

  void resetQuiz() {
    currentIndex.value = 0;
    score.value = 0;
    resetTimer();
    selectRandomFlashCards();
    startTimer();
  }
}
