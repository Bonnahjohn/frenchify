import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
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

class QuestionController extends GetxController {
  var allFlashCards = <Question>[].obs;
  var question = <Question>[].obs;
  var currentIndex = 0.obs;
  var score = 0.obs;
  var timer = 15.obs;
  Timer? _timer;
  var selectedAnswer = ''.obs;
  var isPaused = false.obs;

  final container = GetStorage();

  @override
  void onInit() {
    super.onInit();
    loadFlashCards();
    startTimer();
  }

  void loadFlashCards() {
    var savedFlashCards = container.read<List>('flashCards') ?? [];
    print('Saved FlashCards: $savedFlashCards');
    if (savedFlashCards.isNotEmpty) {
      allFlashCards
          .assignAll(savedFlashCards.map((e) => Question.fromJson(e)).toList());
    } else {
      // Add sample flashcards
      allFlashCards.assignAll([
        Question(
          question:
              "What is the most common way to say \"hello\" in French during the day?",
          options: ["Bonne nuit", "Bonsoir", "Bonjour", "Salut"],
          answer: "Salut",
        ),
        Question(
          question: "How would you greet a group of people in French?",
          options: [
            "Bonjour, monsieur",
            " Bonjour à tous",
            "Comment allez-vous?",
            "Enchanté"
          ],
          answer: "Comment allez-vous?",
        ),
        Question(
          question: "How do you ask someone if they speak English?",
          options: [
            "Bonjour, comment allez-vous ?",
            "Parlez-vous anglais ?",
            "Je m'appelle...",
          ],
          answer: "Parlez-vous anglais ?",
        ),
        Question(
          question:
              "You're at the market and a friendly vendor says \"Bonjour, madame!\" How would you respond?",
          options: [
            "Bonjour!",
            "Comment allez-vous?",
            "Enchantée",
            "Merci, au revoir"
          ],
          answer: "Bonjour!",
        ),
        Question(
          question:
              "A child might greet you with \"Coucou!\" What's the closest informal English equivalent?",
          options: ["Hello!", "Howdy!", "Hey there!", "Good morning!"],
          answer: "Hey there!",
        ),
        Question(
          question:
              "Your friend joins you at a cafe. What's a casual greeting you might use?",
          options: [
            "Bonsoir",
            "Salut! Comment vas-tu?",
            "Comment vous appelez-vous?",
            "Enchanté"
          ],
          answer: "Salut! Comment vas-tu?",
        ),
        Question(
          question:
              "You run into an acquaintance on the street.  A neutral greeting like \"Hi\" could be:",
          options: ["Bonjour", "Salut", " Bonsoir", "Comment allez-vous?"],
          answer: "Salut",
        ),
        Question(
          question:
              "You see someone you haven't seen in a long time. How might you express surprise?",
          options: ["Salut!", "Ça fait longtemps!", "Enchanté", "Au revoir"],
          answer: "Ça fait longtemps!",
        ),
        Question(
          question:
              "You answer the phone. What's a professional-sounding greeting?",
          options: [
            "Allô",
            "Salut!",
            "Bonjour, monsieur/madame",
            " Comment allez-vous?"
          ],
          answer: "Bonjour, monsieur/madame",
        ),
        Question(
          question:
              "You're leaving a store. What's a polite way to say goodbye?",
          options: ["Bonne journée", " À bientôt", "Au revoir", "Salut"],
          answer: "Au revoir",
        ),
        Question(
          question: "How do you formally ask someone their name in French?",
          options: [
            "Comment tu t'appelles?",
            " Comment vous appelez-vous?",
            "Je m'appelle",
            "Enchanté"
          ],
          answer: " Comment vous appelez-vous?",
        ),
        Question(
          question: "How do you say \"yes\" in French?",
          options: [
            "Non",
            " Oui",
            "De rien",
          ],
          answer: " Oui",
        ),
        Question(
          question: "How do you say \"you're welcome\" in French?",
          options: [
            "Merci",
            " De rien",
            "Salut",
          ],
          answer: " De rien",
        ),
        //
        Question(
          question:
              "What is the most common way to say hello in French during the day?",
          options: [
            "Bonjour",
            "Bonsoir",
            "Salut",
          ],
          answer: "Bonjour",
        ),
        //
        Question(
          question: "How do you say hello in French in the evening?",
          options: [
            "Bonjour",
            "Bonsoir",
            "Salut",
          ],
          answer: "Bonsoir",
        ),
        //
        Question(
          question: "What is a common response to \"Comment allez-vous?\"",
          options: [
            "De rien",
            "Je vais bien, merci. Et vous ?",
            "Salut",
          ],
          answer: "Je vais bien, merci. Et vous ?",
        ),
        //
        Question(
          question: "How do you introduce yourself?",
          options: [
            "Je suis tu",
            "Comment tu t'appelles ?",
            " Je m'appelle...",
          ],
          answer: " Je m'appelle...",
        ),
        //
        Question(
          question: "How do you respond when someone tells you their name?",
          options: [
            "Enchanté(e).",
            "Non",
            " Je m'appelle...",
          ],
          answer: "Enchanté(e).",
        ),
        //
        Question(
          question: "What is a polite way to say goodbye?",
          options: [
            "Salut (always)",
            "Au revoir",
            "À bientôt",
          ],
          answer: "Au revoir",
        ),
        //
        Question(
          question: "How do you say \"see you soon\" in French?",
          options: [
            "À plus tard",
            "Salut",
            "À bientôt",
          ],
          answer: "À bientôt",
        ),
        //
        Question(
          question: "How do you answer \"Enchanté(e)\"?",
          options: [
            "De rien",
            "Moi aussi",
            "À bientôt",
          ],
          answer: "Moi aussi",
        ),
        //
        Question(
          question: "What does \"enchanté(e)\" mean?",
          options: [
            "Goodbye",
            "Thank you",
            "Pleased to meet you",
          ],
          answer: "Pleased to meet you",
        ),

        //
        Question(
          question: "How do you say \"nice to meet you\" in a more formal way?",
          options: [
            " Salut",
            "Ravi(e) de faire votre connaissance",
            "Comment allez-vous ?",
          ],
          answer: "Ravi(e) de faire votre connaissance",
        ),
      ]);
      saveFlashCards();
    }
    for (var question in allFlashCards) {
      question.shuffleOptions();
    }
    selectRandomFlashCards();
  }

  void saveFlashCards() {
    container.write(
        'flashCards', allFlashCards.map((e) => e.toJson()).toList());
  }

  void selectRandomFlashCards() {
    var random = Random();
    var shuffledFlashCards = allFlashCards.toList()..shuffle(random);
    question.assignAll(shuffledFlashCards.take(10).toList());
    print('Selected FlashCards: ${question.length}');
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
    if (currentIndex < question.length - 1) {
      currentIndex++;
      startTimer();
    } else {
      print('Quiz Completed! Showing dialog...');
      Get.defaultDialog(
        title: 'Quiz Completed',
        middleText:
            'You have completed the quiz! You scored ${score.value} out of ${question.length}',
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
    if (answer == question[currentIndex.value].answer) {
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
