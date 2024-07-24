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
}

class BasicController extends GetxController {
  var allFlashCards = <Question>[].obs;
  var basic = <Question>[].obs;
  var currentIndex = 0.obs;
  var score = 0.obs;
  var timer = 15.obs;
  Timer? _timer;
  var selectedAnswer = ''.obs;
  var isPaused = false.obs;

  final basics = GetStorage();

  @override
  void onInit() {
    super.onInit();
    loadFlashCards();
    startTimer();
  }

  void loadFlashCards() {
    var savedFlashCards = basics.read<List>('flashCards') ?? [];
    print('Saved FlashCards: $savedFlashCards');
    if (savedFlashCards.isNotEmpty) {
      allFlashCards
          .assignAll(savedFlashCards.map((e) => Question.fromJson(e)).toList());
    } else {
      // Add sample flashcards
      allFlashCards.assignAll([
        Question(
          question: 'What is "Hello" in French?',
          answer: 'Bonjour',
          options: ['Bonjour', 'Bonsoir', 'Salut', 'Adieu'],
        ),
        Question(
          question: 'What is "Goodbye" in French?',
          answer: 'Au revoir',
          options: ['Au revoir', 'Adieu', 'Salut', 'Bonjour'],
        ),
        Question(
          question: 'What is "Please" in French?',
          answer: 'S\'il vous plaît',
          options: ['S\'il vous plaît', 'Merci', 'Excusez-moi', 'Pardon'],
        ),
        Question(
          question: 'What is "Thank you" in French?',
          answer: 'Merci',
          options: ['Merci', 'De rien', 'S\'il vous plaît', 'Pardon'],
        ),
        Question(
          question: 'What is "Yes" in French?',
          answer: 'Oui',
          options: ['Oui', 'Non', 'Peut-être', 'D\'accord'],
        ),
        Question(
          question: 'What is "No" in French?',
          answer: 'Non',
          options: ['Non', 'Oui', 'Peut-être', 'D\'accord'],
        ),
        Question(
          question: 'What is "Excuse me" in French?',
          answer: 'Excusez-moi',
          options: ['Excusez-moi', 'S\'il vous plaît', 'Merci', 'Pardon'],
        ),
        Question(
          question: 'What is "Sorry" in French?',
          answer: 'Pardon',
          options: ['Pardon', 'Excusez-moi', 'Merci', 'S\'il vous plaît'],
        ),
        Question(
          question: 'What is "Do you speak English?" in French?',
          answer: 'Parlez-vous anglais?',
          options: [
            'Parlez-vous français?',
            'Parlez-vous espagnol?',
            'Parlez-vous allemand?',
            'Parlez-vous anglais?',
          ],
        ),
        Question(
          question: 'What is "I don\'t understand" in French?',
          answer: 'Je ne comprends pas',
          options: [
            'Je ne comprends pas',
            'Je ne sais pas',
            'Je comprends',
            'Je sais'
          ],
        ),
        Question(
          question: 'What is "How much is it?" in French?',
          answer: 'C\'est combien?',
          options: [
            'C\'est combien?',
            'Combien de temps?',
            'Quelle heure est-il?',
            'Où est?'
          ],
        ),
        Question(
          question: 'What is "Where is the bathroom?" in French?',
          answer: 'Où sont les toilettes?',
          options: [
            'Où sont les toilettes?',
            'Où est la salle de bain?',
            'Où est la cuisine?',
            'Où est la chambre?'
          ],
        ),
        Question(
          question: 'What is "I would like" in French?',
          answer: 'Je voudrais',
          options: ['Je voudrais', 'Je veux', 'Je désire', 'Je cherche'],
        ),
        Question(
          question: 'What is "How are you?" in French?',
          answer: 'Comment ça va?',
          options: [
            'Comment ça va?',
            'Comment allez-vous?',
            'Ça va bien?',
            'Ça va mal?'
          ],
        ),
        Question(
          question: 'What is "I am fine, thank you" in French?',
          answer: 'Je vais bien, merci',
          options: [
            'Je vais bien, merci',
            'Je vais mal',
            'Ça va',
            'Ça ne va pas'
          ],
        ),
        Question(
          question: 'What is "I am lost" in French?',
          answer: 'Je suis perdu',
          options: [
            'Je suis perdu',
            'Je suis trouvé',
            'Je suis parti',
            'Je suis resté'
          ],
        ),
        Question(
          question: 'What is "Can you help me?" in French?',
          answer: 'Pouvez-vous m\'aider?',
          options: [
            'Pouvez-vous m\'aider?',
            'Pouvez-vous me montrer?',
            'Pouvez-vous me parler?',
            'Pouvez-vous m\'écouter?'
          ],
        ),
        Question(
          question: 'What is "What time is it?" in French?',
          answer: 'Quelle heure est-il?',
          options: [
            'Quelle heure est-il?',
            'C\'est quelle heure?',
            'Il est quelle heure?',
            'Quel temps fait-il?'
          ],
        ),
        Question(
          question: 'What is "I love you" in French?',
          answer: 'Je t\'aime',
          options: [
            'Je t\'aime',
            'Je t\'aime bien',
            'Je te déteste',
            'Je t\'adore'
          ],
        ),
        Question(
          question: 'What is "Where are you from?" in French?',
          answer: 'D\'où viens-tu?',
          options: [
            'D\'où viens-tu?',
            'Où habites-tu?',
            'Où es-tu?',
            'Où vas-tu?'
          ],
        ),
        Question(
          question: 'What is "I am hungry" in French?',
          answer: 'J\'ai faim',
          options: [
            'J\'ai faim',
            'J\'ai soif',
            'Je suis fatigué',
            'Je suis malade'
          ],
        ),
        Question(
          question: 'What is "I am thirsty" in French?',
          answer: 'J\'ai soif',
          options: [
            'J\'ai soif',
            'J\'ai faim',
            'Je suis fatigué',
            'Je suis malade'
          ],
        ),
        Question(
          question: 'What is "Where is the train station?" in French?',
          answer: 'Où est la gare?',
          options: [
            'Où est la gare?',
            'Où est l\'hôtel?',
            'Où est l\'aéroport?',
            'Où est le restaurant?'
          ],
        ),
        Question(
          question: 'What is "Good night" in French?',
          answer: 'Bonne nuit',
          options: ['Bonne nuit', 'Bonsoir', 'Bonjour', 'Salut'],
        ),
        Question(
          question: 'What is "How old are you?" in French?',
          answer: 'Quel âge as-tu?',
          options: [
            'Quel âge as-tu?',
            'Où habites-tu?',
            'Comment t\'appelles-tu?',
            'Quel est ton nom?'
          ],
        ),
        Question(
          question: 'What is "My name is" in French?',
          answer: 'Je m\'appelle',
          options: ['Je m\'appelle', 'Mon nom est', 'Je suis', 'Moi c\'est'],
        ),
        Question(
          question: 'What is "I am tired" in French?',
          answer: 'Je suis fatigué',
          options: [
            'Je suis fatigué',
            'Je suis malade',
            'Je suis en forme',
            'Je suis content'
          ],
        ),
        Question(
          question: 'What is "Do you have?" in French?',
          answer: 'Avez-vous?',
          options: ['Avez-vous?', 'Avez-tu?', 'As-tu?', 'As-vous?'],
        ),
        Question(
          question: 'What is "I need" in French?',
          answer: 'J\'ai besoin de',
          options: ['J\'ai besoin de', 'Je veux', 'Je désire', 'Je cherche'],
        ),
        Question(
          question: 'What is "Can I have the bill, please?" in French?',
          answer: 'L\'addition, s\'il vous plaît?',
          options: [
            'L\'addition, s\'il vous plaît?',
            'Le menu, s\'il vous plaît?',
            'L\'eau, s\'il vous plaît?',
            'Le vin, s\'il vous plaît?'
          ],
        ),
        Question(
          question: 'What is "What is your name?" in French?',
          answer: 'Comment vous appelez-vous?',
          options: [
            'Comment vous appelez-vous?',
            'Quel est votre nom?',
            'Quel âge avez-vous?',
            'Où habitez-vous?'
          ],
        ),
        Question(
          question: 'What is "Where is" in French?',
          answer: 'Où est',
          options: ['Où est', 'Où sont', 'Quelle est', 'Quel est'],
        ),
        Question(
          question: 'What is "What is" in French?',
          answer: 'Qu\'est-ce que',
          options: [
            'Qu\'est-ce que',
            'Où est-ce que',
            'Comment est-ce que',
            'Qui est-ce que'
          ],
        ),
        Question(
          question: 'What is "When" in French?',
          answer: 'Quand',
          options: ['Quand', 'Comment', 'Pourquoi', 'Où'],
        ),
        Question(
          question: 'What is "Where" in French?',
          answer: 'Où',
          options: ['Où', 'Quand', 'Comment', 'Pourquoi'],
        ),
        Question(
          question: 'What is "Who" in French?',
          answer: 'Qui',
          options: ['Qui', 'Où', 'Quand', 'Comment'],
        ),
        Question(
          question: 'What is "Why" in French?',
          answer: 'Pourquoi',
          options: ['Pourquoi', 'Quand', 'Comment', 'Où'],
        ),
        Question(
          question: 'What is "How" in French?',
          answer: 'Comment',
          options: ['Comment', 'Pourquoi', 'Quand', 'Où'],
        ),
      ]);
      saveFlashCards();
    }

    selectRandomFlashCards();
  }

  void saveFlashCards() {
    basics.write('flashCards', allFlashCards.map((e) => e.toJson()).toList());
  }

  void selectRandomFlashCards() {
    var random = Random();

    var shuffledFlashCards = allFlashCards.toList()..shuffle(random);
    basic.assignAll(shuffledFlashCards.take(10).toList());
    print('Selected FlashCards: ${basic.length}');
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
    if (currentIndex < basic.length - 1) {
      currentIndex++;
      startTimer();
    } else {
      print('Quiz Completed! Showing dialog...');
      Get.defaultDialog(
        title: 'Quiz Completed',
        middleText:
            'You have completed the quiz! You scored ${score.value} out of ${basic.length}',
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
    if (answer == basic[currentIndex.value].answer) {
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
