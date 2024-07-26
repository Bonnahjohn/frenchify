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

class ProfsController extends GetxController {
  var allFlashCards = <Question>[].obs;
  var profs = <Question>[].obs;
  var currentIndex = 0.obs;
  var score = 0.obs;
  var timer = 15.obs;
  Timer? _timer;
  var selectedAnswer = ''.obs;
  var isPaused = false.obs;

  final profession = GetStorage();

  @override
  void onInit() {
    super.onInit();
    loadFlashCards();
    startTimer();
  }

  void loadFlashCards() {
    var savedFlashCards = profession.read<List>('flashCards') ?? [];
    print('Saved FlashCards: $savedFlashCards');
    if (savedFlashCards.isNotEmpty) {
      allFlashCards
          .assignAll(savedFlashCards.map((e) => Question.fromJson(e)).toList());
    } else {
      // Add sample flashcards
      allFlashCards.assignAll([
        Question(
          question: 'What is "Doctor" in French?',
          answer: 'Médecin',
          options: ['Médecin', 'Infirmier', 'Pharmacien', 'Chirurgien'],
        ),
        Question(
          question: 'What is "Nurse" in French?',
          answer: 'Infirmier/Infirmière',
          options: [
            'Infirmier/Infirmière',
            'Médecin',
            'Pharmacien',
            'Chirurgien'
          ],
        ),
        Question(
          question: 'What is "Pharmacist" in French?',
          answer: 'Pharmacien/Pharmacienne',
          options: [
            'Pharmacien/Pharmacienne',
            'Médecin',
            'Infirmier',
            'Chirurgien'
          ],
        ),
        Question(
          question: 'What is "Surgeon" in French?',
          answer: 'Chirurgien/Chirurgienne',
          options: [
            'Chirurgien/Chirurgienne',
            'Médecin',
            'Infirmier',
            'Pharmacien'
          ],
        ),
        Question(
          question: 'What is "Teacher" in French?',
          answer: 'Enseignant/Enseignante',
          options: [
            'Enseignant/Enseignante',
            'Professeur',
            'Élève',
            'Directeur'
          ],
        ),
        Question(
          question: 'What is "Professor" in French?',
          answer: 'Professeur',
          options: [
            'Professeur',
            'Enseignant/Enseignante',
            'Élève',
            'Directeur'
          ],
        ),
        Question(
          question: 'What is "Student" in French?',
          answer: 'Élève',
          options: [
            'Élève',
            'Professeur',
            'Enseignant/Enseignante',
            'Directeur'
          ],
        ),
        Question(
          question: 'What is "Principal" in French?',
          answer: 'Directeur/Directrice',
          options: [
            'Directeur/Directrice',
            'Professeur',
            'Élève',
            'Enseignant/Enseignante'
          ],
        ),
        Question(
          question: 'What is "Lawyer" in French?',
          answer: 'Avocat/Avocate',
          options: ['Avocat/Avocate', 'Juge', 'Notaire', 'Député'],
        ),
        Question(
          question: 'What is "Judge" in French?',
          answer: 'Juge',
          options: ['Juge', 'Avocat/Avocate', 'Notaire', 'Député'],
        ),
        Question(
          question: 'What is "Notary" in French?',
          answer: 'Notaire',
          options: ['Notaire', 'Avocat/Avocate', 'Juge', 'Député'],
        ),
        Question(
          question: 'What is "Deputy" in French?',
          answer: 'Député',
          options: ['Député', 'Avocat/Avocate', 'Juge', 'Notaire'],
        ),
        Question(
          question: 'What is "Engineer" in French?',
          answer: 'Ingénieur',
          options: ['Ingénieur', 'Architecte', 'Technicien', 'Scientifique'],
        ),
        Question(
          question: 'What is "Architect" in French?',
          answer: 'Architecte',
          options: ['Architecte', 'Ingénieur', 'Technicien', 'Scientifique'],
        ),
        Question(
          question: 'What is "Technician" in French?',
          answer: 'Technicien/Technicienne',
          options: [
            'Technicien/Technicienne',
            'Ingénieur',
            'Architecte',
            'Scientifique'
          ],
        ),
        Question(
          question: 'What is "Scientist" in French?',
          answer: 'Scientifique',
          options: ['Scientifique', 'Ingénieur', 'Architecte', 'Technicien'],
        ),
        Question(
          question: 'What is "Artist" in French?',
          answer: 'Artiste',
          options: ['Artiste', 'Peintre', 'Sculpteur', 'Dessinateur'],
        ),
        Question(
          question: 'What is "Painter" in French?',
          answer: 'Peintre',
          options: ['Peintre', 'Artiste', 'Sculpteur', 'Dessinateur'],
        ),
        Question(
          question: 'What is "Sculptor" in French?',
          answer: 'Sculpteur/Sculptrice',
          options: [
            'Sculpteur/Sculptrice',
            'Peintre',
            'Artiste',
            'Dessinateur'
          ],
        ),
        Question(
          question: 'What is "Drawer" in French?',
          answer: 'Dessinateur/Dessinatrice',
          options: [
            'Dessinateur/Dessinatrice',
            'Peintre',
            'Sculpteur',
            'Artiste'
          ],
        ),
        Question(
          question: 'What is "Chef" in French?',
          answer: 'Chef',
          options: [
            'Chef',
            'Cuisinier/Cuisinière',
            'Serveur/Serveuse',
            'Barman'
          ],
        ),
        Question(
          question: 'What is "Cook" in French?',
          answer: 'Cuisinier/Cuisinière',
          options: [
            'Cuisinier/Cuisinière',
            'Chef',
            'Serveur/Serveuse',
            'Barman'
          ],
        ),
        Question(
          question: 'What is "Waiter" in French?',
          answer: 'Serveur/Serveuse',
          options: [
            'Serveur/Serveuse',
            'Chef',
            'Cuisinier/Cuisinière',
            'Barman'
          ],
        ),
        Question(
          question: 'What is "Bartender" in French?',
          answer: 'Barman',
          options: [
            'Barman',
            'Serveur/Serveuse',
            'Chef',
            'Cuisinier/Cuisinière'
          ],
        ),
        Question(
          question: 'What is "Driver" in French?',
          answer: 'Chauffeur',
          options: ['Chauffeur', 'Conducteur', 'Pilote', 'Passager'],
        ),
        Question(
          question: 'What is "Pilot" in French?',
          answer: 'Pilote',
          options: ['Pilote', 'Chauffeur', 'Conducteur', 'Passager'],
        ),
        Question(
          question: 'What is "Passenger" in French?',
          answer: 'Passager/Passagère',
          options: ['Passager/Passagère', 'Chauffeur', 'Conducteur', 'Pilote'],
        ),
        Question(
          question: 'What is "Cleaner" in French?',
          answer: 'Nettoyeur/Nettoyeuse',
          options: [
            'Nettoyeur/Nettoyeuse',
            'Chauffeur',
            'Conducteur',
            'Pilote'
          ],
        ),
        Question(
          question: 'What is "Mechanic" in French?',
          answer: 'Mécanicien/Mécanicienne',
          options: [
            'Mécanicien/Mécanicienne',
            'Technicien',
            'Ingénieur',
            'Architecte'
          ],
        ),
        Question(
          question: 'What is "Electrician" in French?',
          answer: 'Électricien/Électricienne',
          options: [
            'Électricien/Électricienne',
            'Technicien',
            'Mécanicien',
            'Ingénieur'
          ],
        ),
        Question(
          question: 'What is "Plumber" in French?',
          answer: 'Plombier',
          options: ['Plombier', 'Électricien', 'Mécanicien', 'Technicien'],
        ),
        Question(
          question: 'What is "Farmer" in French?',
          answer: 'Agriculteur/Agricultrice',
          options: [
            'Agriculteur/Agricultrice',
            'Jardinier/Jardinière',
            'Bouvier',
            'Vigneron/Vigneronne'
          ],
        ),
        Question(
          question: 'What is "Gardener" in French?',
          answer: 'Jardinier/Jardinière',
          options: [
            'Jardinier/Jardinière',
            'Agriculteur/Agricultrice',
            'Bouvier',
            'Vigneron/Vigneronne'
          ],
        ),
        Question(
          question: 'What is "Herder" in French?',
          answer: 'Bouvier',
          options: [
            'Bouvier',
            'Agriculteur/Agricultrice',
            'Jardinier/Jardinière',
            'Vigneron/Vigneronne'
          ],
        ),
        Question(
          question: 'What is "Winemaker" in French?',
          answer: 'Vigneron/Vigneronne',
          options: [
            'Vigneron/Vigneronne',
            'Agriculteur/Agricultrice',
            'Jardinier/Jardinière',
            'Bouvier'
          ],
        ),
        Question(
          question: 'What is "Hairdresser" in French?',
          answer: 'Coiffeur/Coiffeuse',
          options: [
            'Coiffeur/Coiffeuse',
            'Styliste',
            'Maquilleur/Maquilleuse',
            'Esthéticien/Esthéticienne'
          ],
        ),
      ]);
      ;
      saveFlashCards();
    }
    for (var question in allFlashCards) {
      question.shuffleOptions();
    }
    selectRandomFlashCards();
  }

  void saveFlashCards() {
    profession.write(
        'flashCards', allFlashCards.map((e) => e.toJson()).toList());
  }

  void selectRandomFlashCards() {
    var random = Random();

    var shuffledFlashCards = allFlashCards.toList()..shuffle(random);
    profs.assignAll(shuffledFlashCards.take(10).toList());
    print('Selected FlashCards: ${profs.length}');
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
    if (currentIndex < profs.length - 1) {
      currentIndex++;
      startTimer();
    } else {
      print('Quiz Completed! Showing dialog...');
      Get.defaultDialog(
        title: 'Quiz Completed',
        middleText:
            'You have completed the quiz! You scored ${score.value} out of ${profs.length}',
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
    if (answer == profs[currentIndex.value].answer) {
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
