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

class ColorController extends GetxController {
  var allFlashCards = <Question>[].obs;
  var colours = <Question>[].obs;
  var currentIndex = 0.obs;
  var score = 0.obs;
  var timer = 15.obs;
  Timer? _timer;
  var selectedAnswer = ''.obs;
  var isPaused = false.obs;

  final colors = GetStorage();

  @override
  void onInit() {
    super.onInit();
    loadFlashCards();
    startTimer();
  }

  void loadFlashCards() {
    var savedFlashCards = colors.read<List>('flashCards') ?? [];
    print('Saved FlashCards: $savedFlashCards');
    if (savedFlashCards.isNotEmpty) {
      allFlashCards
          .assignAll(savedFlashCards.map((e) => Question.fromJson(e)).toList());
    } else {
      // Add sample flashcards
      allFlashCards.assignAll([
        Question(
          question: 'What is "Red" in French?',
          answer: 'Rouge',
          options: ['Rouge', 'Bleu', 'Vert', 'Jaune'],
        ),
        Question(
          question: 'What is "Blue" in French?',
          answer: 'Bleu',
          options: ['Bleu', 'Rouge', 'Vert', 'Jaune'],
        ),
        Question(
          question: 'What is "Green" in French?',
          answer: 'Vert',
          options: ['Vert', 'Bleu', 'Rouge', 'Jaune'],
        ),
        Question(
          question: 'What is "Yellow" in French?',
          answer: 'Jaune',
          options: ['Jaune', 'Vert', 'Bleu', 'Rouge'],
        ),
        Question(
          question: 'What is "Black" in French?',
          answer: 'Noir',
          options: ['Noir', 'Blanc', 'Gris', 'Rose'],
        ),
        Question(
          question: 'What is "White" in French?',
          answer: 'Blanc',
          options: ['Blanc', 'Noir', 'Gris', 'Rose'],
        ),
        Question(
          question: 'What is "Gray" in French?',
          answer: 'Gris',
          options: ['Gris', 'Blanc', 'Noir', 'Rose'],
        ),
        Question(
          question: 'What is "Pink" in French?',
          answer: 'Rose',
          options: ['Rose', 'Gris', 'Blanc', 'Noir'],
        ),
        Question(
          question: 'What is "Purple" in French?',
          answer: 'Violet',
          options: ['Violet', 'Rose', 'Gris', 'Blanc'],
        ),
        Question(
          question: 'What is "Orange" in French?',
          answer: 'Orange',
          options: ['Orange', 'Violet', 'Rose', 'Gris'],
        ),
        Question(
          question: 'What is "Brown" in French?',
          answer: 'Marron',
          options: ['Marron', 'Orange', 'Violet', 'Rose'],
        ),
        Question(
          question: 'What is "Light blue" in French?',
          answer: 'Bleu clair',
          options: ['Bleu clair', 'Bleu foncé', 'Vert clair', 'Rouge clair'],
        ),
        Question(
          question: 'What is "Dark blue" in French?',
          answer: 'Bleu foncé',
          options: ['Bleu foncé', 'Bleu clair', 'Vert foncé', 'Rouge foncé'],
        ),
        Question(
          question: 'What is "Light green" in French?',
          answer: 'Vert clair',
          options: ['Vert clair', 'Vert foncé', 'Bleu clair', 'Rouge clair'],
        ),
        Question(
          question: 'What is "Dark green" in French?',
          answer: 'Vert foncé',
          options: ['Vert foncé', 'Vert clair', 'Bleu foncé', 'Rouge foncé'],
        ),
        Question(
          question: 'What is "Light red" in French?',
          answer: 'Rouge clair',
          options: ['Rouge clair', 'Rouge foncé', 'Bleu clair', 'Vert clair'],
        ),
        Question(
          question: 'What is "Dark red" in French?',
          answer: 'Rouge foncé',
          options: ['Rouge foncé', 'Rouge clair', 'Bleu foncé', 'Vert foncé'],
        ),
        Question(
          question: 'What is "Bright yellow" in French?',
          answer: 'Jaune vif',
          options: ['Jaune vif', 'Jaune pâle', 'Jaune clair', 'Jaune foncé'],
        ),
        Question(
          question: 'What is "Pale yellow" in French?',
          answer: 'Jaune pâle',
          options: ['Jaune pâle', 'Jaune vif', 'Jaune clair', 'Jaune foncé'],
        ),
        Question(
          question: 'What is "Light brown" in French?',
          answer: 'Marron clair',
          options: ['Marron clair', 'Marron foncé', 'Beige', 'Brun'],
        ),
        Question(
          question: 'What is "Dark brown" in French?',
          answer: 'Marron foncé',
          options: ['Marron foncé', 'Marron clair', 'Beige', 'Brun'],
        ),
        Question(
          question: 'What is "Beige" in French?',
          answer: 'Beige',
          options: ['Beige', 'Marron foncé', 'Marron clair', 'Brun'],
        ),
        Question(
          question: 'What is "Bright red" in French?',
          answer: 'Rouge vif',
          options: ['Rouge vif', 'Rouge foncé', 'Rouge clair', 'Rouge pâle'],
        ),
        Question(
          question: 'What is "Pale blue" in French?',
          answer: 'Bleu pâle',
          options: ['Bleu pâle', 'Bleu foncé', 'Bleu clair', 'Bleu vif'],
        ),
        Question(
          question: 'What is "Colorful" in French?',
          answer: 'Coloré',
          options: ['Coloré', 'Monochrome', 'Sombre', 'Brillant'],
        ),
        Question(
          question: 'What is "Monochrome" in French?',
          answer: 'Monochrome',
          options: ['Monochrome', 'Coloré', 'Sombre', 'Brillant'],
        ),
        Question(
          question: 'What is "Bright" in French?',
          answer: 'Brillant',
          options: ['Brillant', 'Sombre', 'Coloré', 'Monochrome'],
        ),
        Question(
          question: 'What is "Dark" in French?',
          answer: 'Sombre',
          options: ['Sombre', 'Brillant', 'Coloré', 'Monochrome'],
        ),
        Question(
          question: 'What is "The red apple" in French?',
          answer: 'La pomme rouge',
          options: [
            'La pomme rouge',
            'Le rouge pomme',
            'Le pomme rouge',
            'La rouge pomme'
          ],
        ),
        Question(
          question: 'What is "The blue sky" in French?',
          answer: 'Le ciel bleu',
          options: [
            'Le ciel bleu',
            'La bleu ciel',
            'Le bleu ciel',
            'La ciel bleu'
          ],
        ),
        Question(
          question: 'What is "The green grass" in French?',
          answer: 'L’herbe verte',
          options: [
            'L’herbe verte',
            'Le verte herbe',
            'L’herbe vert',
            'Le vert herbe'
          ],
        ),
        Question(
          question: 'What is "The yellow sun" in French?',
          answer: 'Le soleil jaune',
          options: [
            'Le soleil jaune',
            'La jaune soleil',
            'Le jaune soleil',
            'La soleil jaune'
          ],
        ),
        Question(
          question: 'What is "The white snow" in French?',
          answer: 'La neige blanche',
          options: [
            'La neige blanche',
            'Le blanche neige',
            'Le neige blanc',
            'La blanche neige'
          ],
        ),
        Question(
          question: 'What is "The black cat" in French?',
          answer: 'Le chat noir',
          options: [
            'Le chat noir',
            'La noire chat',
            'Le noir chat',
            'La chat noire'
          ],
        ),
        Question(
          question: 'What is "The gray clouds" in French?',
          answer: 'Les nuages gris',
          options: [
            'Les nuages gris',
            'Le gris nuages',
            'Les gris nuages',
            'Le nuages gris'
          ],
        ),
        Question(
          question: 'What is "The pink flowers" in French?',
          answer: 'Les fleurs roses',
          options: [
            'Les fleurs roses',
            'Le rose fleurs',
            'Les roses fleurs',
            'Le fleurs rose'
          ],
        ),
        Question(
          question: 'What is "The brown dog" in French?',
          answer: 'Le chien marron',
          options: [
            'Le chien marron',
            'La marron chien',
            'Le marron chien',
            'La chien marron'
          ],
        ),
        Question(
          question: 'What is "The purple dress" in French?',
          answer: 'La robe violette',
          options: [
            'La robe violette',
            'Le violette robe',
            'La violette robe',
            'Le robe violette'
          ],
        ),
        Question(
          question: 'What is "The orange fruit" in French?',
          answer: 'Le fruit orange',
          options: [
            'Le fruit orange',
            'La orange fruit',
            'Le orange fruit',
            'La fruit orange'
          ],
        ),
        Question(
          question: 'What is "The blue ocean" in French?',
          answer: 'L’océan bleu',
          options: [
            'L’océan bleu',
            'Le bleu océan',
            'Le océan bleu',
            'La bleu océan'
          ],
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
    colors.write('flashCards', allFlashCards.map((e) => e.toJson()).toList());
  }

  void selectRandomFlashCards() {
    var random = Random();

    var shuffledFlashCards = allFlashCards.toList()..shuffle(random);
    colours.assignAll(shuffledFlashCards.take(10).toList());
    print('Selected FlashCards: ${colours.length}');
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
    if (currentIndex < colours.length - 1) {
      currentIndex++;
      startTimer();
    } else {
      print('Quiz Completed! Showing dialog...');
      Get.defaultDialog(
        title: 'Quiz Completed',
        middleText:
            'You have completed the quiz! You scored ${score.value} out of ${colours.length}',
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
    if (answer == colours[currentIndex.value].answer) {
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
