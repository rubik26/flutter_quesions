import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final selectedAnswers =
        ModalRoute.of(context)?.settings.arguments as List<String>;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Your Answers:',
              style: TextStyle(fontSize: 24),
            ),
            ...selectedAnswers.map(
              (answer) => Text(
                answer,
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
