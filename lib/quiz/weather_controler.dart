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

class SeasonController extends GetxController {
  var allFlashCards = <Question>[].obs;
  var seasons = <Question>[].obs;
  var currentIndex = 0.obs;
  var score = 0.obs;
  var timer = 15.obs;
  Timer? _timer;
  var selectedAnswer = ''.obs;
  var isPaused = false.obs;

  final season = GetStorage();

  @override
  void onInit() {
    super.onInit();
    loadFlashCards();
    startTimer();
  }

  void loadFlashCards() {
    var savedFlashCards = season.read<List>('flashCards') ?? [];
    print('Saved FlashCards: $savedFlashCards');
    if (savedFlashCards.isNotEmpty) {
      allFlashCards
          .assignAll(savedFlashCards.map((e) => Question.fromJson(e)).toList());
    } else {
      // Add sample flashcards
      allFlashCards.assignAll([
        Question(
          question: 'What is "Winter" in French?',
          answer: 'Hiver',
          options: ['Hiver', 'Été', 'Automne', 'Printemps'],
        ),
        Question(
          question: 'What is "Spring" in French?',
          answer: 'Printemps',
          options: ['Printemps', 'Été', 'Automne', 'Hiver'],
        ),
        Question(
          question: 'What is "Summer" in French?',
          answer: 'Été',
          options: ['Été', 'Printemps', 'Automne', 'Hiver'],
        ),
        Question(
          question: 'What is "Autumn" in French?',
          answer: 'Automne',
          options: ['Automne', 'Été', 'Printemps', 'Hiver'],
        ),
        Question(
          question: 'What is "Rain" in French?',
          answer: 'Pluie',
          options: ['Pluie', 'Neige', 'Vent', 'Soleil'],
        ),
        Question(
          question: 'What is "Snow" in French?',
          answer: 'Neige',
          options: ['Neige', 'Pluie', 'Vent', 'Soleil'],
        ),
        Question(
          question: 'What is "Sun" in French?',
          answer: 'Soleil',
          options: ['Soleil', 'Pluie', 'Neige', 'Vent'],
        ),
        Question(
          question: 'What is "Wind" in French?',
          answer: 'Vent',
          options: ['Vent', 'Pluie', 'Neige', 'Soleil'],
        ),
        Question(
          question: 'What is "Cloudy" in French?',
          answer: 'Nuageux',
          options: ['Nuageux', 'Ensoleillé', 'Pluvieux', 'Neigeux'],
        ),
        Question(
          question: 'What is "Foggy" in French?',
          answer: 'Brumeux',
          options: ['Brumeux', 'Ensoleillé', 'Pluvieux', 'Nuageux'],
        ),
        Question(
          question: 'What is "Clear" in French?',
          answer: 'Dégagé',
          options: ['Dégagé', 'Nuageux', 'Pluvieux', 'Brumeux'],
        ),
        Question(
          question: 'What is "Storm" in French?',
          answer: 'Tempête',
          options: ['Tempête', 'Neige', 'Pluie', 'Vent'],
        ),
        Question(
          question: 'What is "Hot" in French?',
          answer: 'Chaud',
          options: ['Chaud', 'Froid', 'Doux', 'Humide'],
        ),
        Question(
          question: 'What is "Cold" in French?',
          answer: 'Froid',
          options: ['Froid', 'Chaud', 'Doux', 'Humide'],
        ),
        Question(
          question: 'What is "Mild" in French?',
          answer: 'Doux',
          options: ['Doux', 'Froid', 'Chaud', 'Humide'],
        ),
        Question(
          question: 'What is "Humid" in French?',
          answer: 'Humide',
          options: ['Humide', 'Chaud', 'Froid', 'Doux'],
        ),
        Question(
          question: 'What is "Thunder" in French?',
          answer: 'Tonnerre',
          options: ['Tonnerre', 'Éclair', 'Pluie', 'Vent'],
        ),
        Question(
          question: 'What is "Lightning" in French?',
          answer: 'Éclair',
          options: ['Éclair', 'Tonnerre', 'Pluie', 'Vent'],
        ),
        Question(
          question: 'What is "Rainbow" in French?',
          answer: 'Arc-en-ciel',
          options: ['Arc-en-ciel', 'Éclair', 'Pluie', 'Vent'],
        ),
        Question(
          question: 'What is "Temperature" in French?',
          answer: 'Température',
          options: ['Température', 'Climat', 'Temps', 'Conditions'],
        ),
        Question(
          question: 'What is "Climate" in French?',
          answer: 'Climat',
          options: ['Climat', 'Température', 'Temps', 'Conditions'],
        ),
        Question(
          question: 'What is "Weather" in French?',
          answer: 'Temps',
          options: ['Temps', 'Climat', 'Température', 'Conditions'],
        ),
        Question(
          question: 'What is "Weather Conditions" in French?',
          answer: 'Conditions météorologiques',
          options: [
            'Conditions météorologiques',
            'Température',
            'Climat',
            'Temps'
          ],
        ),
        Question(
          question: 'What is "Weather Forecast" in French?',
          answer: 'Prévisions météorologiques',
          options: [
            'Prévisions météorologiques',
            'Conditions météorologiques',
            'Climat',
            'Temps'
          ],
        ),
        Question(
          question: 'What is "Humidity" in French?',
          answer: 'Humidité',
          options: ['Humidité', 'Chaud', 'Froid', 'Doux'],
        ),
        Question(
          question: 'What is "Dew" in French?',
          answer: 'Rosée',
          options: ['Rosée', 'Neige', 'Pluie', 'Vent'],
        ),
        Question(
          question: 'What is "Frost" in French?',
          answer: 'Givre',
          options: ['Givre', 'Neige', 'Pluie', 'Vent'],
        ),
        Question(
          question: 'What is "Hail" in French?',
          answer: 'Grêle',
          options: ['Grêle', 'Neige', 'Pluie', 'Vent'],
        ),
        Question(
          question: 'What is "Tornado" in French?',
          answer: 'Tornade',
          options: ['Tornade', 'Tempête', 'Pluie', 'Vent'],
        ),
        Question(
          question: 'What is "Hurricane" in French?',
          answer: 'Ouragan',
          options: ['Ouragan', 'Tempête', 'Pluie', 'Vent'],
        ),
        Question(
          question: 'What is "Cyclone" in French?',
          answer: 'Cyclone',
          options: ['Cyclone', 'Ouragan', 'Tempête', 'Pluie'],
        ),
        Question(
          question: 'What is "Heatwave" in French?',
          answer: 'Canicule',
          options: ['Canicule', 'Froid', 'Doux', 'Humide'],
        ),
        Question(
          question: 'What is "Cold Snap" in French?',
          answer: 'Vague de froid',
          options: ['Vague de froid', 'Canicule', 'Doux', 'Humide'],
        ),
        Question(
          question: 'What is "Season" in French?',
          answer: 'Saison',
          options: ['Saison', 'Temps', 'Climat', 'Météo'],
        ),
        Question(
          question: 'What is "Spring Equinox" in French?',
          answer: 'Équinoxe de printemps',
          options: [
            'Équinoxe de printemps',
            'Solstice d\'été',
            'Équinoxe d\'automne',
            'Solstice d\'hiver'
          ],
        ),
        Question(
          question: 'What is "Summer Solstice" in French?',
          answer: 'Solstice d\'été',
          options: [
            'Solstice d\'été',
            'Équinoxe de printemps',
            'Équinoxe d\'automne',
            'Solstice d\'hiver'
          ],
        ),
        Question(
          question: 'What is "Autumn Equinox" in French?',
          answer: 'Équinoxe d\'automne',
          options: [
            'Équinoxe d\'automne',
            'Solstice d\'été',
            'Équinoxe de printemps',
            'Solstice d\'hiver'
          ],
        ),
        Question(
          question: 'What is "Winter Solstice" in French?',
          answer: 'Solstice d\'hiver',
          options: [
            'Solstice d\'hiver',
            'Équinoxe de printemps',
            'Équinoxe d\'automne',
            'Solstice d\'été'
          ],
        ),
        Question(
          question: 'What is "Sunny" in French?',
          answer: 'Ensoleillé',
          options: ['Ensoleillé', 'Nuageux', 'Pluvieux', 'Brumeux'],
        ),
        Question(
          question: 'What is "Overcast" in French?',
          answer: 'Couvert',
          options: ['Couvert', 'Ensoleillé', 'Pluvieux', 'Brumeux'],
        ),
        Question(
          question: 'What is "Drizzle" in French?',
          answer: 'Bruine',
          options: ['Bruine', 'Pluie', 'Neige', 'Vent'],
        ),
        Question(
          question: 'What is "Gust" in French?',
          answer: 'Rafale',
          options: ['Rafale', 'Vent', 'Tempête', 'Brise'],
        ),
        Question(
          question: 'What is "Breeze" in French?',
          answer: 'Brise',
          options: ['Brise', 'Vent', 'Tempête', 'Rafale'],
        ),
        Question(
          question: 'What is "Torrential Rain" in French?',
          answer: 'Pluie torrentielle',
          options: ['Pluie torrentielle', 'Pluie légère', 'Bruine', 'Orage'],
        ),
        Question(
          question: 'What is "Clear Sky" in French?',
          answer: 'Ciel dégagé',
          options: [
            'Ciel dégagé',
            'Ciel nuageux',
            'Ciel couvert',
            'Ciel brumeux'
          ],
        ),
        Question(
          question: 'What is "Weather Report" in French?',
          answer: 'Bulletin météorologique',
          options: [
            'Bulletin météorologique',
            'Prévisions météorologiques',
            'Climat',
            'Conditions météorologiques'
          ],
        ),
        Question(
          question: 'What is "Sunshine" in French?',
          answer: 'Ensoleillement',
          options: ['Ensoleillement', 'Nuageux', 'Pluvieux', 'Brumeux'],
        ),
        Question(
          question: 'What is "Fahrenheit" in French?',
          answer: 'Fahrenheit',
          options: ['Fahrenheit', 'Celsius', 'Kelvin', 'Réaumur'],
        ),
        Question(
          question: 'What is "Celsius" in French?',
          answer: 'Celsius',
          options: ['Celsius', 'Fahrenheit', 'Kelvin', 'Réaumur'],
        ),
        Question(
          question: 'What is "Kelvin" in French?',
          answer: 'Kelvin',
          options: ['Kelvin', 'Fahrenheit', 'Celsius', 'Réaumur'],
        ),
        Question(
          question: 'What is "Relative Humidity" in French?',
          answer: 'Humidité relative',
          options: ['Humidité relative', 'Humidité', 'Température', 'Climat'],
        ),
        Question(
          question: 'What is "Weather Condition" in French?',
          answer: 'Condition météorologique',
          options: [
            'Condition météorologique',
            'Climat',
            'Température',
            'Temps'
          ],
        ),
        Question(
          question: 'What is "Barometer" in French?',
          answer: 'Baromètre',
          options: ['Baromètre', 'Thermomètre', 'Hygromètre', 'Anémomètre'],
        ),
        Question(
          question: 'What is "Thermometer" in French?',
          answer: 'Thermomètre',
          options: ['Thermomètre', 'Baromètre', 'Hygromètre', 'Anémomètre'],
        ),
        Question(
          question: 'What is "Hygrometer" in French?',
          answer: 'Hygromètre',
          options: ['Hygromètre', 'Baromètre', 'Thermomètre', 'Anémomètre'],
        ),
        Question(
          question: 'What is "Anemometer" in French?',
          answer: 'Anémomètre',
          options: ['Anémomètre', 'Baromètre', 'Thermomètre', 'Hygromètre'],
        ),
        Question(
          question: 'What is "Gale" in French?',
          answer: 'Tempête',
          options: ['Tempête', 'Vent', 'Rafale', 'Brise'],
        ),
        Question(
          question: 'What is "Chilly" in French?',
          answer: 'Frais',
          options: ['Frais', 'Chaud', 'Doux', 'Humide'],
        ),
        Question(
          question: 'What is "Sweltering" in French?',
          answer: 'Étouffant',
          options: ['Étouffant', 'Chaud', 'Froid', 'Doux'],
        ),
        Question(
          question: 'What is "Muggy" in French?',
          answer: 'Lourd',
          options: ['Lourd', 'Chaud', 'Froid', 'Doux'],
        ),
        Question(
          question: 'What is "Drizzle" in French?',
          answer: 'Bruine',
          options: ['Bruine', 'Pluie', 'Neige', 'Vent'],
        ),
        Question(
          question: 'What is "Hazy" in French?',
          answer: 'Brumeux',
          options: ['Brumeux', 'Clair', 'Nuageux', 'Pluvieux'],
        ),
        Question(
          question: 'What is "Sunny Interval" in French?',
          answer: 'Éclaircie',
          options: ['Éclaircie', 'Nuageux', 'Pluvieux', 'Brumeux'],
        ),
        Question(
          question: 'What is "Heat Index" in French?',
          answer: 'Indice de chaleur',
          options: ['Indice de chaleur', 'Température', 'Climat', 'Humidité'],
        ),
        Question(
          question: 'What is "Wind Chill" in French?',
          answer: 'Température ressentie',
          options: ['Température ressentie', 'Vent', 'Froid', 'Chaud'],
        ),
        Question(
          question: 'What is "Precipitation" in French?',
          answer: 'Précipitations',
          options: ['Précipitations', 'Température', 'Climat', 'Humidité'],
        ),
        Question(
          question: 'What is "Weather Front" in French?',
          answer: 'Front météorologique',
          options: [
            'Front météorologique',
            'Température',
            'Climat',
            'Conditions'
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
    season.write('flashCards', allFlashCards.map((e) => e.toJson()).toList());
  }

  void selectRandomFlashCards() {
    var random = Random();

    var shuffledFlashCards = allFlashCards.toList()..shuffle(random);
    seasons.assignAll(shuffledFlashCards.take(10).toList());
    print('Selected FlashCards: ${seasons.length}');
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
    if (currentIndex < seasons.length - 1) {
      currentIndex++;
      startTimer();
    } else {
      print('Quiz Completed! Showing dialog...');
      Get.defaultDialog(
        title: 'Quiz Completed',
        middleText:
            'You have completed the quiz! You scored ${score.value} out of ${seasons.length}',
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
    if (answer == seasons[currentIndex.value].answer) {
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
