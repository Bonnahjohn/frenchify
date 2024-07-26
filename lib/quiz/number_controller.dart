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

class NumberController extends GetxController {
  var allFlashCardse = <Question>[].obs;
  var numbers = <Question>[].obs;
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
    allFlashCardse.assignAll([
      Question(
        question: 'What is "One" in French?',
        answer: 'Un',
        options: ['Un', 'Deux', 'Trois', 'Quatre'],
      ),
      Question(
        question: 'What is "Two" in French?',
        answer: 'Deux',
        options: ['Deux', 'Un', 'Trois', 'Quatre'],
      ),
      Question(
        question: 'What is "Three" in French?',
        answer: 'Trois',
        options: ['Trois', 'Un', 'Deux', 'Quatre'],
      ),
      Question(
        question: 'What is "Four" in French?',
        answer: 'Quatre',
        options: ['Quatre', 'Un', 'Deux', 'Trois'],
      ),
      Question(
        question: 'What is "Five" in French?',
        answer: 'Cinq',
        options: ['Cinq', 'Six', 'Sept', 'Huit'],
      ),
      Question(
        question: 'What is "Six" in French?',
        answer: 'Six',
        options: ['Six', 'Cinq', 'Sept', 'Huit'],
      ),
      Question(
        question: 'What is "Seven" in French?',
        answer: 'Sept',
        options: ['Sept', 'Six', 'Cinq', 'Huit'],
      ),
      Question(
        question: 'What is "Eight" in French?',
        answer: 'Huit',
        options: ['Huit', 'Sept', 'Six', 'Cinq'],
      ),
      Question(
        question: 'What is "Nine" in French?',
        answer: 'Neuf',
        options: ['Neuf', 'Dix', 'Onze', 'Douze'],
      ),
      Question(
        question: 'What is "Ten" in French?',
        answer: 'Dix',
        options: ['Dix', 'Onze', 'Douze', 'Treize'],
      ),
      Question(
        question: 'What is "Eleven" in French?',
        answer: 'Onze',
        options: ['Onze', 'Dix', 'Douze', 'Treize'],
      ),
      Question(
        question: 'What is "Twelve" in French?',
        answer: 'Douze',
        options: ['Douze', 'Onze', 'Dix', 'Treize'],
      ),
      Question(
        question: 'What is "Thirteen" in French?',
        answer: 'Treize',
        options: ['Treize', 'Douze', 'Onze', 'Dix'],
      ),
      Question(
        question: 'What is "Fourteen" in French?',
        answer: 'Quatorze',
        options: ['Quatorze', 'Treize', 'Douze', 'Onze'],
      ),
      Question(
        question: 'What is "Fifteen" in French?',
        answer: 'Quinze',
        options: ['Quinze', 'Quatorze', 'Treize', 'Douze'],
      ),
      Question(
        question: 'What is "Sixteen" in French?',
        answer: 'Seize',
        options: ['Seize', 'Quinze', 'Quatorze', 'Treize'],
      ),
      Question(
        question: 'What is "Seventeen" in French?',
        answer: 'Dix-sept',
        options: ['Dix-sept', 'Seize', 'Quinze', 'Quatorze'],
      ),
      Question(
        question: 'What is "Eighteen" in French?',
        answer: 'Dix-huit',
        options: ['Dix-huit', 'Dix-sept', 'Seize', 'Quinze'],
      ),
      Question(
        question: 'What is "Nineteen" in French?',
        answer: 'Dix-neuf',
        options: ['Dix-neuf', 'Dix-huit', 'Dix-sept', 'Seize'],
      ),
      Question(
        question: 'What is "Twenty" in French?',
        answer: 'Vingt',
        options: ['Vingt', 'Dix-neuf', 'Dix-huit', 'Dix-sept'],
      ),
      Question(
        question: 'What is "Thirty" in French?',
        answer: 'Trente',
        options: ['Trente', 'Vingt', 'Quarante', 'Cinquante'],
      ),
      Question(
        question: 'What is "Forty" in French?',
        answer: 'Quarante',
        options: ['Quarante', 'Trente', 'Cinquante', 'Soixante'],
      ),
      Question(
        question: 'What is "Fifty" in French?',
        answer: 'Cinquante',
        options: ['Cinquante', 'Quarante', 'Soixante', 'Trente'],
      ),
      Question(
        question: 'What is "Sixty" in French?',
        answer: 'Soixante',
        options: ['Soixante', 'Cinquante', 'Quarante', 'Trente'],
      ),
      Question(
        question: 'What is "Seventy" in French?',
        answer: 'Soixante-dix',
        options: ['Soixante-dix', 'Soixante', 'Cinquante', 'Quarante'],
      ),
      Question(
        question: 'What is "Eighty" in French?',
        answer: 'Quatre-vingts',
        options: ['Quatre-vingts', 'Soixante-dix', 'Soixante', 'Cinquante'],
      ),
      Question(
        question: 'What is "Ninety" in French?',
        answer: 'Quatre-vingt-dix',
        options: [
          'Quatre-vingt-dix',
          'Quatre-vingts',
          'Soixante-dix',
          'Soixante'
        ],
      ),
      Question(
        question: 'What is "One hundred" in French?',
        answer: 'Cent',
        options: ['Cent', 'Quatre-vingt-dix', 'Quatre-vingts', 'Soixante-dix'],
      ),
      Question(
        question: 'What is "One thousand" in French?',
        answer: 'Mille',
        options: ['Mille', 'Cent', 'Dix mille', 'Cent mille'],
      ),
      Question(
        question: 'What is "Ten thousand" in French?',
        answer: 'Dix mille',
        options: ['Dix mille', 'Mille', 'Cent mille', 'Un million'],
      ),
      Question(
        question: 'What is "One million" in French?',
        answer: 'Un million',
        options: ['Un million', 'Dix mille', 'Cent mille', 'Mille'],
      ),
      Question(
        question: 'What is "First" in French?',
        answer: 'Premier',
        options: ['Premier', 'Deuxième', 'Troisième', 'Quatrième'],
      ),
      Question(
        question: 'What is "Second" in French?',
        answer: 'Deuxième',
        options: ['Deuxième', 'Premier', 'Troisième', 'Quatrième'],
      ),
      Question(
        question: 'What is "Third" in French?',
        answer: 'Troisième',
        options: ['Troisième', 'Premier', 'Deuxième', 'Quatrième'],
      ),
      Question(
        question: 'What is "Fourth" in French?',
        answer: 'Quatrième',
        options: ['Quatrième', 'Premier', 'Deuxième', 'Troisième'],
      ),
      Question(
        question: 'What is "Fifth" in French?',
        answer: 'Cinquième',
        options: ['Cinquième', 'Sixième', 'Septième', 'Huitième'],
      ),
      Question(
        question: 'What is "Sixth" in French?',
        answer: 'Sixième',
        options: ['Sixième', 'Cinquième', 'Septième', 'Huitième'],
      ),
      Question(
        question: 'What is "Seventh" in French?',
        answer: 'Septième',
        options: ['Septième', 'Sixième', 'Cinquième', 'Huitième'],
      ),
      Question(
        question: 'What is "Eighth" in French?',
        answer: 'Huitième',
        options: ['Huitième', 'Septième', 'Sixième', 'Cinquième'],
      ),
      Question(
        question: 'What is "Ninth" in French?',
        answer: 'Neuvième',
        options: ['Neuvième', 'Dixième', 'Onzième', 'Douzième'],
      ),
      Question(
        question: 'What is "Tenth" in French?',
        answer: 'Dixième',
        options: ['Dixième', 'Neuvième', 'Onzième', 'Douzième'],
      ),
      Question(
        question: 'What is "Twentieth" in French?',
        answer: 'Vingtième',
        options: ['Vingtième', 'Dix-neuvième', 'Vingt-et-unième', 'Trentième'],
      ),
      Question(
          question: 'What is "Thirtieth" in French?',
          answer: 'Trentième',
          options: ['Trentième', 'Vingtième', 'Quar'])
    ]);

    for (var question in allFlashCardse) {
      question.shuffleOptions();
    }
    selectRandomFlashCards();
  }

  void selectRandomFlashCards() {
    var random = Random();

    var shuffledFlashCards = allFlashCardse.toList()..shuffle(random);
    numbers.assignAll(shuffledFlashCards.take(10).toList());
    print('Selected FlashCardseee: ${numbers.length}');
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
    if (currentIndex < numbers.length - 1) {
      currentIndex++;
      startTimer();
    } else {
      print('Quiz Completed! Showing dialog...');
      Get.defaultDialog(
        title: 'Quiz Completed',
        middleText:
            'You have completed the quiz! You scored ${score.value} out of ${numbers.length}',
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
    if (answer == numbers[currentIndex.value].answer) {
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
