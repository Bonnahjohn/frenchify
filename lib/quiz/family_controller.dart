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

class FamilyController extends GetxController {
  var allFlashCards = <Question>[].obs;
  var families = <Question>[].obs;
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
        question: 'What is "Father" in French?',
        answer: 'Père',
        options: ['Père', 'Mère', 'Frère', 'Sœur'],
      ),
      Question(
        question: 'What is "Mother" in French?',
        answer: 'Mère',
        options: ['Mère', 'Père', 'Frère', 'Sœur'],
      ),
      Question(
        question: 'What is "Brother" in French?',
        answer: 'Frère',
        options: ['Frère', 'Père', 'Mère', 'Sœur'],
      ),
      Question(
        question: 'What is "Sister" in French?',
        answer: 'Sœur',
        options: ['Sœur', 'Frère', 'Mère', 'Père'],
      ),
      Question(
        question: 'What is "Uncle" in French?',
        answer: 'Oncle',
        options: ['Oncle', 'Tante', 'Cousin', 'Cousine'],
      ),
      Question(
        question: 'What is "Aunt" in French?',
        answer: 'Tante',
        options: ['Tante', 'Oncle', 'Cousin', 'Cousine'],
      ),
      Question(
        question: 'What is "Cousin (male)" in French?',
        answer: 'Cousin',
        options: ['Cousin', 'Cousine', 'Oncle', 'Tante'],
      ),
      Question(
        question: 'What is "Cousin (female)" in French?',
        answer: 'Cousine',
        options: ['Cousine', 'Cousin', 'Oncle', 'Tante'],
      ),
      Question(
        question: 'What is "Grandfather" in French?',
        answer: 'Grand-père',
        options: ['Grand-père', 'Grand-mère', 'Père', 'Mère'],
      ),
      Question(
        question: 'What is "Grandmother" in French?',
        answer: 'Grand-mère',
        options: ['Grand-mère', 'Grand-père', 'Père', 'Mère'],
      ),
      Question(
        question: 'What is "Son" in French?',
        answer: 'Fils',
        options: ['Fils', 'Fille', 'Père', 'Mère'],
      ),
      Question(
        question: 'What is "Daughter" in French?',
        answer: 'Fille',
        options: ['Fille', 'Fils', 'Père', 'Mère'],
      ),
      Question(
        question: 'What is "Husband" in French?',
        answer: 'Mari',
        options: ['Mari', 'Femme', 'Père', 'Mère'],
      ),
      Question(
        question: 'What is "Wife" in French?',
        answer: 'Femme',
        options: ['Femme', 'Mari', 'Père', 'Mère'],
      ),
      Question(
        question: 'What is "Nephew" in French?',
        answer: 'Neveu',
        options: ['Neveu', 'Nièce', 'Oncle', 'Tante'],
      ),
      Question(
        question: 'What is "Niece" in French?',
        answer: 'Nièce',
        options: ['Nièce', 'Neveu', 'Oncle', 'Tante'],
      ),
      Question(
        question: 'What is "Family" in French?',
        answer: 'Famille',
        options: ['Famille', 'Parent', 'Enfant', 'Époux'],
      ),
      Question(
        question: 'What is "Parents" in French?',
        answer: 'Parents',
        options: ['Parents', 'Famille', 'Enfants', 'Époux'],
      ),
      Question(
        question: 'What is "Children" in French?',
        answer: 'Enfants',
        options: ['Enfants', 'Parents', 'Famille', 'Époux'],
      ),
      Question(
        question: 'What is "Spouse" in French?',
        answer: 'Époux',
        options: ['Époux', 'Enfants', 'Parents', 'Famille'],
      ),
      Question(
        question: 'What is "Boyfriend" in French?',
        answer: 'Petit ami',
        options: ['Petit ami', 'Petite amie', 'Mari', 'Femme'],
      ),
      Question(
        question: 'What is "Girlfriend" in French?',
        answer: 'Petite amie',
        options: ['Petite amie', 'Petit ami', 'Mari', 'Femme'],
      ),
      Question(
        question: 'What is "Fiancé (male)" in French?',
        answer: 'Fiancé',
        options: ['Fiancé', 'Fiancée', 'Petit ami', 'Petite amie'],
      ),
      Question(
        question: 'What is "Fiancé (female)" in French?',
        answer: 'Fiancée',
        options: ['Fiancée', 'Fiancé', 'Petit ami', 'Petite amie'],
      ),
      Question(
        question: 'What is "Stepmother" in French?',
        answer: 'Belle-mère',
        options: ['Belle-mère', 'Beau-père', 'Mère', 'Père'],
      ),
      Question(
        question: 'What is "Stepfather" in French?',
        answer: 'Beau-père',
        options: ['Beau-père', 'Belle-mère', 'Père', 'Mère'],
      ),
      Question(
        question: 'What is "Stepbrother" in French?',
        answer: 'Demi-frère',
        options: ['Demi-frère', 'Demi-sœur', 'Frère', 'Sœur'],
      ),
      Question(
        question: 'What is "Stepsister" in French?',
        answer: 'Demi-sœur',
        options: ['Demi-sœur', 'Demi-frère', 'Sœur', 'Frère'],
      ),
      Question(
        question: 'What is "Godfather" in French?',
        answer: 'Parrain',
        options: ['Parrain', 'Marraine', 'Père', 'Mère'],
      ),
      Question(
        question: 'What is "Godmother" in French?',
        answer: 'Marraine',
        options: ['Marraine', 'Parrain', 'Mère', 'Père'],
      ),
      Question(
        question: 'What is "Relative" in French?',
        answer: 'Parent',
        options: ['Parent', 'Enfant', 'Famille', 'Époux'],
      ),
      Question(
        question: 'What is "Twin" in French?',
        answer: 'Jumeau',
        options: ['Jumeau', 'Jumelle', 'Frère', 'Sœur'],
      ),
      Question(
        question: 'What is "Only child" in French?',
        answer: 'Enfant unique',
        options: ['Enfant unique', 'Fils unique', 'Fille unique', 'Jumeau'],
      ),
      Question(
        question: 'What is "First cousin" in French?',
        answer: 'Cousin germain',
        options: ['Cousin germain', 'Cousin', 'Cousine', 'Parent'],
      ),
      Question(
        question: 'What is "Family tree" in French?',
        answer: 'Arbre généalogique',
        options: ['Arbre généalogique', 'Famille', 'Parent', 'Époux'],
      ),
      Question(
        question: 'What is "Grandson" in French?',
        answer: 'Petit-fils',
        options: ['Petit-fils', 'Petite-fille', 'Fils', 'Fille'],
      ),
      Question(
        question: 'What is "Granddaughter" in French?',
        answer: 'Petite-fille',
        options: ['Petite-fille', 'Petit-fils', 'Fils', 'Fille'],
      ),
      Question(
        question: 'What is "Father-in-law" in French?',
        answer: 'Beau-père',
        options: ['Beau-père', 'Belle-mère', 'Père', 'Mère'],
      ),
      Question(
        question: 'What is "Mother-in-law" in French?',
        answer: 'Belle-mère',
        options: ['Belle-mère', 'Beau-père', 'Mère', 'Père'],
      ),
      Question(
        question: 'What is "Brother-in-law" in French?',
        answer: 'Beau-frère',
        options: ['Beau-frère', 'Belle-sœur', 'Frère', 'Sœur'],
      ),
      Question(
        question: 'What is "Sister-in-law" in French?',
        answer: 'Belle-sœur',
        options: ['Belle-sœur', 'Beau-frère', 'Sœur', 'Frère'],
      ),
      Question(
        question: 'What is "In-law" in French?',
        answer: 'Beau-parent',
        options: ['Beau-parent', 'Parent', 'Époux', 'Enfant'],
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
    families.assignAll(shuffledFlashCards.take(10).toList());
    print('Selected FlashCards: ${families.length}');
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
    if (currentIndex < families.length - 1) {
      currentIndex++;
      startTimer();
    } else {
      print('Quiz Completed! Showing dialog...');
      Get.defaultDialog(
        title: 'Quiz Completed',
        middleText:
            'You have completed the quiz! You scored ${score.value} out of ${families.length}',
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
    if (answer == families[currentIndex.value].answer) {
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
