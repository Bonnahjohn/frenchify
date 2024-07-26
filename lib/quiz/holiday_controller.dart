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

class HolidayController extends GetxController {
  var allFlashCards = <Question>[].obs;
  var holidays = <Question>[].obs;
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
        question: 'What is "New Year\'s Day" in French?',
        answer: 'Jour de l\'An',
        options: ['Jour de l\'An', 'Noël', 'Pâques', 'Fête du Travail'],
      ),
      Question(
        question: 'What is "Christmas" in French?',
        answer: 'Noël',
        options: ['Noël', 'Jour de l\'An', 'Pâques', 'Fête du Travail'],
      ),
      Question(
        question: 'What is "Easter" in French?',
        answer: 'Pâques',
        options: ['Pâques', 'Noël', 'Jour de l\'An', 'Fête du Travail'],
      ),
      Question(
        question: 'What is "Labour Day" in French?',
        answer: 'Fête du Travail',
        options: ['Fête du Travail', 'Noël', 'Pâques', 'Jour de l\'An'],
      ),
      Question(
        question: 'What is "Bastille Day" in French?',
        answer: '14 Juillet',
        options: ['14 Juillet', 'Jour de l\'An', 'Noël', 'Pâques'],
      ),
      Question(
        question: 'What is "All Saints\' Day" in French?',
        answer: 'La Toussaint',
        options: ['La Toussaint', 'Noël', 'Pâques', 'Jour de l\'An'],
      ),
      Question(
        question: 'What is "Armistice Day" in French?',
        answer: 'Armistice',
        options: ['Armistice', '14 Juillet', 'Noël', 'Pâques'],
      ),
      Question(
        question: 'What is "Valentine\'s Day" in French?',
        answer: 'Saint-Valentin',
        options: ['Saint-Valentin', 'Noël', 'Pâques', 'Jour de l\'An'],
      ),
      Question(
        question: 'What is "Halloween" in French?',
        answer: 'Halloween',
        options: ['Halloween', 'Noël', 'Pâques', 'Jour de l\'An'],
      ),
      Question(
        question: 'What is "Thanksgiving" in French?',
        answer: 'Action de Grâce',
        options: ['Action de Grâce', 'Noël', 'Pâques', 'Jour de l\'An'],
      ),
      Question(
        question: 'What is "Epiphany" in French?',
        answer: 'Épiphanie',
        options: ['Épiphanie', 'Noël', 'Pâques', 'Jour de l\'An'],
      ),
      Question(
        question: 'What is "Victory in Europe Day" in French?',
        answer: 'Victoire 1945',
        options: ['Victoire 1945', '14 Juillet', 'Noël', 'Pâques'],
      ),
      Question(
        question: 'What is "Mother\'s Day" in French?',
        answer: 'Fête des Mères',
        options: ['Fête des Mères', 'Fête des Pères', 'Noël', 'Pâques'],
      ),
      Question(
        question: 'What is "Father\'s Day" in French?',
        answer: 'Fête des Pères',
        options: ['Fête des Pères', 'Fête des Mères', 'Noël', 'Pâques'],
      ),
      Question(
        question: 'What is "Ascension" in French?',
        answer: 'Ascension',
        options: ['Ascension', 'Noël', 'Pâques', 'Jour de l\'An'],
      ),
      Question(
        question: 'What is "Whit Monday" in French?',
        answer: 'Lundi de Pentecôte',
        options: ['Lundi de Pentecôte', 'Noël', 'Pâques', 'Jour de l\'An'],
      ),
      Question(
        question: 'What is "Remembrance Day" in French?',
        answer: 'Journée du Souvenir',
        options: ['Journée du Souvenir', '14 Juillet', 'Noël', 'Pâques'],
      ),
      Question(
        question: 'What is "Chandeleur" in French?',
        answer: 'Chandeleur',
        options: ['Chandeleur', 'Noël', 'Pâques', 'Jour de l\'An'],
      ),
      Question(
        question: 'What is "Fête de la Musique" in French?',
        answer: 'Fête de la Musique',
        options: ['Fête de la Musique', 'Noël', 'Pâques', 'Jour de l\'An'],
      ),
      Question(
        question: 'What is "Fête de la Saint-Jean" in French?',
        answer: 'Fête de la Saint-Jean',
        options: ['Fête de la Saint-Jean', 'Noël', 'Pâques', 'Jour de l\'An'],
      ),
      Question(
        question: 'What is "Mardi Gras" in French?',
        answer: 'Mardi Gras',
        options: ['Mardi Gras', 'Noël', 'Pâques', 'Jour de l\'An'],
      ),
      Question(
        question: 'What is "Fête du Travail" in French?',
        answer: 'Fête du Travail',
        options: ['Fête du Travail', 'Noël', 'Pâques', 'Jour de l\'An'],
      ),
      Question(
        question: 'What is "La Saint-Nicolas" in French?',
        answer: 'La Saint-Nicolas',
        options: ['La Saint-Nicolas', 'Noël', 'Pâques', 'Jour de l\'An'],
      ),
      Question(
        question: 'What is "Saint-Sylvestre" in French?',
        answer: 'Saint-Sylvestre',
        options: ['Saint-Sylvestre', 'Noël', 'Pâques', 'Jour de l\'An'],
      ),
      Question(
        question: 'What is "La fête de la Victoire" in French?',
        answer: 'La fête de la Victoire',
        options: ['La fête de la Victoire', 'Noël', 'Pâques', 'Jour de l\'An'],
      ),
      Question(
        question: 'What is "Fête de la Saint-Patrick" in French?',
        answer: 'Fête de la Saint-Patrick',
        options: [
          'Fête de la Saint-Patrick',
          'Noël',
          'Pâques',
          'Jour de l\'An'
        ],
      ),
      Question(
        question: 'What is "La fête de la Saint-André" in French?',
        answer: 'La fête de la Saint-André',
        options: [
          'La fête de la Saint-André',
          'Noël',
          'Pâques',
          'Jour de l\'An'
        ],
      ),
      Question(
        question: 'What is "Fête de la Saint-Georges" in French?',
        answer: 'Fête de la Saint-Georges',
        options: [
          'Fête de la Saint-Georges',
          'Noël',
          'Pâques',
          'Jour de l\'An'
        ],
      ),
      Question(
        question: 'What is "Jour de l\'An" in French?',
        answer: 'Jour de l\'An',
        options: ['Jour de l\'An', 'Noël', 'Pâques', 'Fête du Travail'],
      ),
      Question(
        question: 'What is "La fête des Voisins" in French?',
        answer: 'La fête des Voisins',
        options: ['La fête des Voisins', 'Noël', 'Pâques', 'Jour de l\'An'],
      ),
      Question(
        question: 'What is "Fête de la Saint-Michel" in French?',
        answer: 'Fête de la Saint-Michel',
        options: ['Fête de la Saint-Michel', 'Noël', 'Pâques', 'Jour de l\'An'],
      ),
      Question(
        question: 'What is "Fête de la Saint-Denis" in French?',
        answer: 'Fête de la Saint-Denis',
        options: ['Fête de la Saint-Denis', 'Noël', 'Pâques', 'Jour de l\'An'],
      ),
      Question(
        question: 'What is "Fête de la Saint-Louis" in French?',
        answer: 'Fête de la Saint-Louis',
        options: ['Fête de la Saint-Louis', 'Noël', 'Pâques', 'Jour de l\'An'],
      ),
      Question(
        question: 'What is "La fête de l\'Aïd" in French?',
        answer: 'La fête de l\'Aïd',
        options: ['La fête de l\'Aïd', 'Noël', 'Pâques', 'Jour de l\'An'],
      ),
      Question(
        question: 'What is "La fête de l\'Indépendance" in French?',
        answer: 'La fête de l\'Indépendance',
        options: [
          'La fête de l\'Indépendance',
          'Noël',
          'Pâques',
          'Jour de l\'An'
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
    holidays.assignAll(shuffledFlashCards.take(10).toList());
    print('Selected FlashCards: ${holidays.length}');
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
    if (currentIndex < holidays.length - 1) {
      currentIndex++;
      startTimer();
    } else {
      print('Quiz Completed! Showing dialog...');
      Get.defaultDialog(
        title: 'Quiz Completed',
        middleText:
            'You have completed the quiz! You scored ${score.value} out of ${holidays.length}',
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
    if (answer == holidays[currentIndex.value].answer) {
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
