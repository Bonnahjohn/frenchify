import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'dart:async';
import 'dart:math';

class FlashCard {
  String question;
  String answer;
  List<String> options;

  FlashCard(
      {required this.question, required this.answer, required this.options});

  factory FlashCard.fromJson(Map<String, dynamic> json) {
    return FlashCard(
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

class FlashCardController extends GetxController {
  var allFlashCards = <FlashCard>[].obs;
  var flashCards = <FlashCard>[].obs;
  var currentIndex = 0.obs;
  var score = 0.obs;
  var timer = 10.obs;
  Timer? _timer;
  var selectedAnswer = ''.obs;
  var isPaused = false.obs;

  final box = GetStorage();

  @override
  void onInit() {
    super.onInit();
    loadFlashCards();
    startTimer();
  }

  void loadFlashCards() {
    var savedFlashCards = box.read<List>('flashCards') ?? [];
    print('Saved FlashCards: $savedFlashCards');
    if (savedFlashCards.isNotEmpty) {
      allFlashCards.assignAll(
          savedFlashCards.map((e) => FlashCard.fromJson(e)).toList());
    } else {
      // Add sample flashcards
      allFlashCards.assignAll([
        FlashCard(
            question: 'What is "January" in French?',
            answer: 'Janvier',
            options: ['Janvier', 'Février', 'Mars', 'Avril']),
        FlashCard(
            question: 'What is "February" in French?',
            answer: 'Février',
            options: ['Janvier', 'Février', 'Mars', 'Avril']),
        FlashCard(
            question: 'What is "March" in French?',
            answer: 'Mars',
            options: ['Janvier', 'Février', 'Mars', 'Avril']),
        FlashCard(
            question: 'What is "April" in French?',
            answer: 'Avril',
            options: ['Janvier', 'Février', 'Mars', 'Avril']),
        FlashCard(
            question: 'What is "May" in French?',
            answer: 'Mai',
            options: ['Mai', 'Juin', 'Juillet', 'Août']),
        FlashCard(
            question: 'What is "June" in French?',
            answer: 'Juin',
            options: ['Mai', 'Juin', 'Juillet', 'Août']),
        FlashCard(
            question: 'What is "July" in French?',
            answer: 'Juillet',
            options: ['Mai', 'Juin', 'Juillet', 'Août']),
        FlashCard(
            question: 'What is "August" in French?',
            answer: 'Août',
            options: ['Mai', 'Juin', 'Juillet', 'Août']),
        FlashCard(
            question: 'What is "September" in French?',
            answer: 'Septembre',
            options: ['Septembre', 'Octobre', 'Novembre', 'Décembre']),
        FlashCard(
            question: 'What is "October" in French?',
            answer: 'Octobre',
            options: ['Septembre', 'Octobre', 'Novembre', 'Décembre']),
        FlashCard(
            question: 'What is "November" in French?',
            answer: 'Novembre',
            options: ['Septembre', 'Octobre', 'Novembre', 'Décembre']),
        FlashCard(
            question: 'What is "December" in French?',
            answer: 'Décembre',
            options: ['Septembre', 'Octobre', 'Novembre', 'Décembre']),
        FlashCard(
            question: 'What day is "Monday" in French?',
            answer: 'Lundi',
            options: ['Lundi', 'Mardi', 'Mercredi', 'Jeudi']),
        FlashCard(
            question: 'What day is "Tuesday" in French?',
            answer: 'Mardi',
            options: ['Lundi', 'Mardi', 'Mercredi', 'Jeudi']),
        FlashCard(
            question: 'What day is "Wednesday" in French?',
            answer: 'Mercredi',
            options: ['Lundi', 'Mardi', 'Mercredi', 'Jeudi']),
        FlashCard(
            question: 'What day is "Thursday" in French?',
            answer: 'Jeudi',
            options: ['Lundi', 'Mardi', 'Mercredi', 'Jeudi']),
        FlashCard(
            question: 'What day is "Friday" in French?',
            answer: 'Vendredi',
            options: ['Lundi', 'Mardi', 'Vendredi', 'Jeudi']),
        FlashCard(
            question: 'What day is "Saturday" in French?',
            answer: 'Samedi',
            options: ['Lundi', 'Samedi', 'Mercredi', 'Jeudi']),
        FlashCard(
            question: 'What day is "Sunday" in French?',
            answer: 'Dimanche',
            options: ['Dimanche', 'Mardi', 'Mercredi', 'Jeudi']),
        FlashCard(
            question: 'Which month is the first month of the year in French?',
            answer: 'Janvier',
            options: ['Janvier', 'Mars', 'Août', 'Décembre']),
        FlashCard(
            question:
                'Which month has 30 days and is the sixth month in French?',
            answer: 'Juin',
            options: ['Mai', 'Juin', 'Juillet', 'Août']),
        FlashCard(
            question: 'What month comes after April in French?',
            answer: 'Mai',
            options: ['Janvier', 'Mai', 'Juin', 'Juillet']),
        FlashCard(
            question: 'What month comes before August in French?',
            answer: 'Juillet',
            options: ['Juin', 'Juillet', 'Août', 'Septembre']),
        FlashCard(
            question: 'Which month is known for Halloween in French?',
            answer: 'Octobre',
            options: ['Septembre', 'Octobre', 'Novembre', 'Décembre']),
        FlashCard(
            question: 'What is the seventh month in French?',
            answer: 'Juillet',
            options: ['Juin', 'Juillet', 'Août', 'Septembre']),
        FlashCard(
            question: 'What is the last month of the year in French?',
            answer: 'Décembre',
            options: ['Octobre', 'Novembre', 'Décembre', 'Janvier']),
        FlashCard(
            question: 'What day comes after Wednesday in French?',
            answer: 'Jeudi',
            options: ['Mardi', 'Mercredi', 'Jeudi', 'Vendredi']),
        FlashCard(
            question: 'What day comes before Saturday in French?',
            answer: 'Vendredi',
            options: ['Jeudi', 'Vendredi', 'Samedi', 'Dimanche']),
        FlashCard(
            question: 'What day is the middle of the week in French?',
            answer: 'Mercredi',
            options: ['Mardi', 'Mercredi', 'Jeudi', 'Vendredi']),
        FlashCard(
            question: 'What is "The first day of the week" in French?',
            answer: 'Dimanche',
            options: ['Samedi', 'Dimanche', 'Lundi', 'Mardi']),
        FlashCard(
            question: 'What is "The weekend" in French?',
            answer: 'Le week-end',
            options: ['Le week-end', 'La semaine', 'Le mois', 'L’année']),
        FlashCard(
            question: 'What is "New Year" in French?',
            answer: 'Le Nouvel An',
            options: ['Le Nouvel An', 'La Noël', 'Le printemps', 'L’été']),
        FlashCard(
            question: 'What month is celebrated for Christmas in French?',
            answer: 'Décembre',
            options: ['Octobre', 'Novembre', 'Décembre', 'Janvier']),
        FlashCard(
            question: 'What month is associated with spring in French?',
            answer: 'Mars',
            options: ['Février', 'Mars', 'Avril', 'Mai']),
        FlashCard(
            question: 'What month is typically the hottest in French?',
            answer: 'Août',
            options: ['Juin', 'Juillet', 'Août', 'Septembre']),
        FlashCard(
            question: 'What month marks the beginning of autumn in French?',
            answer: 'Septembre',
            options: ['Juin', 'Juillet', 'Septembre', 'Octobre']),
        FlashCard(
            question: 'What is "Yesterday" in French?',
            answer: 'Hier',
            options: ['Hier', 'Aujourd\'hui', 'Demain', 'Semaine']),
        FlashCard(
            question: 'What is "Tomorrow" in French?',
            answer: 'Demain',
            options: ['Hier', 'Aujourd\'hui', 'Demain', 'Semaine']),
        FlashCard(
            question: 'What is "Today" in French?',
            answer: 'Aujourd\'hui',
            options: ['Hier', 'Aujourd\'hui', 'Demain', 'Semaine']),
        FlashCard(
            question: 'What is "Week" in French?',
            answer: 'Semaine',
            options: ['Mois', 'Semaine', 'Année', 'Jour']),
        FlashCard(
            question: 'What day comes before Monday in French?',
            answer: 'Dimanche',
            options: ['Samedi', 'Dimanche', 'Lundi', 'Mardi']),
        FlashCard(
            question: 'What is "First" in French when referring to a month?',
            answer: 'Premier',
            options: ['Premier', 'Deuxième', 'Troisième', 'Quatrième']),
        FlashCard(
            question: 'What day is "Christmas" in French?',
            answer: 'Le 25 décembre',
            options: [
              'Le 24 décembre',
              'Le 25 décembre',
              'Le 31 décembre',
              'Le 1er janvier'
            ]),
        FlashCard(
            question:
                'What month is known for the "Valentine\'s Day" in French?',
            answer: 'Février',
            options: ['Janvier', 'Février', 'Mars', 'Avril']),
        FlashCard(
            question: 'What is "Monday" in French?',
            answer: 'Lundi',
            options: ['Lundi', 'Mardi', 'Mercredi', 'Jeudi']),
        FlashCard(
            question:
                'What month has 31 days and is known as "the month of May"?',
            answer: 'Mai',
            options: ['Mai', 'Juin', 'Juillet', 'Août']),
        FlashCard(
            question: 'What is "April Fool\'s Day" in French?',
            answer: 'Poisson d\'avril',
            options: [
              'Poisson d\'avril',
              'Jour de l\'an',
              'La Noël',
              'La fête nationale'
            ]),
        FlashCard(
            question: 'What is "Spring" in French?',
            answer: 'Printemps',
            options: ['Hiver', 'Printemps', 'Été', 'Automne']),
        FlashCard(
            question: 'What is "Winter" in French?',
            answer: 'Hiver',
            options: ['Hiver', 'Printemps', 'Été', 'Automne']),
        FlashCard(
            question: 'What is "Summer" in French?',
            answer: 'Été',
            options: ['Hiver', 'Printemps', 'Été', 'Automne']),
        FlashCard(
            question: 'What is "Autumn" in French?',
            answer: 'Automne',
            options: ['Hiver', 'Printemps', 'Été', 'Automne']),
      ]);
      saveFlashCards();
    }
    for (var question in allFlashCards) {
      question.shuffleOptions();
    }
    selectRandomFlashCards();
  }

  void saveFlashCards() {
    box.write('flashCards', allFlashCards.map((e) => e.toJson()).toList());
  }

  void selectRandomFlashCards() {
    var random = Random();
    var shuffledFlashCards = allFlashCards.toList()..shuffle(random);
    flashCards.assignAll(shuffledFlashCards.take(10).toList());
    print('Selected FlashCards: ${flashCards.length}');
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
    if (currentIndex < flashCards.length - 1) {
      currentIndex++;
      startTimer();
    } else {
      print('Quiz Completed! Showing dialog...');
      Get.defaultDialog(
        title: 'Quiz Completed',
        middleText:
            'You have completed the quiz! You scored ${score.value} out of ${flashCards.length}',
        actions: [
          TextButton(
            onPressed: () {
              Get.back(); // Close the dialog
              resetQuiz();
            },
            child: Text('Replay'),
          ),
          TextButton(
            onPressed: () {
              Get.back(); // Close the dialog
              Get.back(); // Exit to the previous screen
            },
            child: Text('Exit'),
          ),
        ],
      );
    }
  }

  void selectAnswer(String answer) {
    selectedAnswer.value = answer;
    if (answer == flashCards[currentIndex.value].answer) {
      score++;
      Get.snackbar('Correct!', 'Good job!', duration: Duration(seconds: 1));
    } else {
      Get.snackbar('Incorrect', 'Try again!', duration: Duration(seconds: 1));
    }
    Future.delayed(Duration(seconds: 1), () {
      nextCard();
    });
  }

  void resetQuiz() {
    currentIndex.value = 0;
    score.value = 0;
    resetTimer();
    selectRandomFlashCards();
    startTimer();
  }
}
