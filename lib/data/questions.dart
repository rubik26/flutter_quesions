import 'package:flutter_quesions/models/quiz_questions.dart';

const questions = [
  QuizQuestions("What is Flutter", [
    "A web development framework",
    "A game development engine",
    "A UI toolkit for building natively compiled apps",
    "A database management system",
  ]),
  QuizQuestions(
    "Which programming language is used to write Flutter apps?",
    [
      "Python",
      "Dart",
      "JavaScript",
      "Kotlin",
    ],
  ),
  QuizQuestions(
    "What widget is commonly used to define the main structure of a Flutter app?",
    [
      "Container",
      "Column",
      "Scaffold",
      "Row",
    ],
  ),
  QuizQuestions(
    "What is the purpose of the pubspec.yaml file in a Flutter project?",
    [
      "To store app images",
      "To define dependencies and metadata",
      "To write app's main code",
      "To specify app colors"
    ],
  ),
  QuizQuestions(
    "What does the \"setState()\" method do in Flutter?",
    [
      "Updates the state of a StatefulWidget and rebuilds its UI",
      "Changes the app's theme",
      "Initializes the app",
      "Adds new widgets to the app",
    ],
  )
];
