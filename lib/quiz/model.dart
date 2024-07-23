import 'package:get/get.dart';

class Question {
  String question;
  List<String> options;
  int answerIndex;

  Question({
    required this.question,
    required this.options,
    required this.answerIndex,
  });
}

//questions
class QuizState {
  RxInt currentQuestionIndex = 0.obs;
  RxInt score = 0.obs;
  RxInt secondsLeft = 60.obs; // For timer
  RxBool isQuizCompleted = false.obs;
  RxInt? selectedAnswerIndex = (-1).obs; // Track the selected answer index
  RxBool showAnswerResult = false.obs; // Track whether to show the result
  void shuffleQuestionsAndOptions() {
    questions.shuffle(); // Shuffle questions
    questions = questions.take(10).toList();
  }

  List<Question> questions = [
    Question(
      question:
          "What is the most common way to say \"hello\" in French during the day?",
      options: ["Bonne nuit", "Bonsoir", "Bonjour", "Salut"],
      answerIndex: 3,
    ),
    Question(
      question: "How would you greet a group of people in French?",
      options: [
        "Bonjour, monsieur",
        " Bonjour à tous",
        "Comment allez-vous?",
        "Enchanté"
      ],
      answerIndex: 2,
    ),
    Question(
      question: "How do you ask someone if they speak English?",
      options: [
        "Bonjour, comment allez-vous ?",
        "Parlez-vous anglais ?",
        "Je m'appelle...",
      ],
      answerIndex: 1,
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
      answerIndex: 0,
    ),
    Question(
      question:
          "A child might greet you with \"Coucou!\" What's the closest informal English equivalent?",
      options: ["Hello!", "Howdy!", "Hey there!", "Good morning!"],
      answerIndex: 2,
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
      answerIndex: 1,
    ),
    Question(
      question:
          "You run into an acquaintance on the street.  A neutral greeting like \"Hi\" could be:",
      options: ["Bonjour", "Salut", " Bonsoir", "Comment allez-vous?"],
      answerIndex: 1,
    ),
    Question(
      question:
          "You see someone you haven't seen in a long time. How might you express surprise?",
      options: ["Salut!", "Ça fait longtemps!", "Enchanté", "Au revoir"],
      answerIndex: 1,
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
      answerIndex: 2,
    ),
    Question(
      question: "You're leaving a store. What's a polite way to say goodbye?",
      options: ["Bonne journée", " À bientôt", "Au revoir", "Salut"],
      answerIndex: 2,
    ),
    Question(
      question: "How do you formally ask someone their name in French?",
      options: [
        "Comment tu t'appelles?",
        " Comment vous appelez-vous?",
        "Je m'appelle",
        "Enchanté"
      ],
      answerIndex: 1,
    ),
    Question(
      question: "How do you say \"yes\" in French?",
      options: [
        "Non",
        " Oui",
        "De rien",
      ],
      answerIndex: 1,
    ),
    Question(
      question: "How do you say \"you're welcome\" in French?",
      options: [
        "Merci",
        " De rien",
        "Salut",
      ],
      answerIndex: 1,
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
      answerIndex: 0,
    ),
    //
    Question(
      question: "How do you say hello in French in the evening?",
      options: [
        "Bonjour",
        "Bonsoir",
        "Salut",
      ],
      answerIndex: 1,
    ),
    //
    Question(
      question: "What is a common response to \"Comment allez-vous?\"",
      options: [
        "De rien",
        "Je vais bien, merci. Et vous ?",
        "Salut",
      ],
      answerIndex: 1,
    ),
    //
    Question(
      question: "How do you introduce yourself?",
      options: [
        "Je suis tu",
        "Comment tu t'appelles ?",
        " Je m'appelle...",
      ],
      answerIndex: 2,
    ),
    //
    Question(
      question: "How do you respond when someone tells you their name?",
      options: [
        "Enchanté(e).",
        "Non",
        " Je m'appelle...",
      ],
      answerIndex: 0,
    ),
    //
    Question(
      question: "What is a polite way to say goodbye?",
      options: [
        "Salut (always)",
        "Au revoir",
        "À bientôt",
      ],
      answerIndex: 1,
    ),
    //
    Question(
      question: "How do you say \"see you soon\" in French?",
      options: [
        "À plus tard",
        "Salut",
        "À bientôt",
      ],
      answerIndex: 2,
    ),
    //
    Question(
      question: "How do you answer \"Enchanté(e)\"?",
      options: [
        "De rien",
        "Moi aussi",
        "À bientôt",
      ],
      answerIndex: 1,
    ),
    //
    Question(
      question: "What does \"enchanté(e)\" mean?",
      options: [
        "Goodbye",
        "Thank you",
        "Pleased to meet you",
      ],
      answerIndex: 2,
    ),

    //
    Question(
      question: "How do you say \"nice to meet you\" in a more formal way?",
      options: [
        " Salut",
        "Ravi(e) de faire votre connaissance",
        "Comment allez-vous ?",
      ],
      answerIndex: 1,
    ),
  ];
}
