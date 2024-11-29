import 'package:flutter/material.dart';
import 'package:flutter_quesions/data/questions.dart';
import 'package:flutter_quesions/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Color> colorsList = [Colors.red, Colors.blue];
    final numTotalQuestions = questions.length;
    final selectedAnswers =
        ModalRoute.of(context)?.settings.arguments as List<String>;

    List<Map<String, Object>> getSummaryData() {
      final List<Map<String, Object>> summary = [];

      for (int i = 0; i < selectedAnswers.length; i++) {
        summary.add(
          {
            'question_index': i,
            'question': questions[i].text,
            'correct_answer': questions[i].answers[0],
            'user_answer': selectedAnswers[i],
            'is_correct': selectedAnswers[i] == questions[i].answers[0],
          },
        );
      }
      return summary;
    }

    final summaryData = getSummaryData();
    final numCorrectQuestions = summaryData
        .where(
          (data) => data['is_correct'] as bool,
        )
        .length;

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween, // Распределение пространства
          children: [
            Column(
              children: [
                const SizedBox(height: 20),
                Text(
                  'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
                  style: const TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: QuestionsSummary(
                  summaryData,
                  colorsList,
                ),
              ),
            ),
            OutlinedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/');
                selectedAnswers.clear();
              },
              icon: const Icon(Icons.exit_to_app),
              label: const Text('Exit'),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
