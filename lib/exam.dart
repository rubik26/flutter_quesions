import 'package:flutter/material.dart';
import 'package:flutter_quesions/data/questions.dart';
import 'package:flutter_quesions/models/answer_button.dart';
import 'package:google_fonts/google_fonts.dart';

const colorList = [Colors.purple, Colors.purpleAccent];

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<StatefulWidget> createState() => _QuesionsState();
}

int currentQuestion = 0;
final List<String> selectedAnswers = [];

class _QuesionsState extends State<Questions> {
  @override
  Widget build(BuildContext context) {
    const AlignmentGeometry startAlignment = Alignment.topLeft;
    const AlignmentGeometry endAlignment = Alignment.bottomRight;

    void chooseAnswer(String answer) {
      selectedAnswers.add(answer);
    }

    void answerQuestion(String answer) {
      chooseAnswer(answer);
      setState(
        () {
          currentQuestion++;
          if (currentQuestion >= questions.length) {
            Navigator.pushNamed(
              context,
              '/result',
              arguments: selectedAnswers,
            );
            currentQuestion = 0;
          }
        },
      );
    }

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: colorList,
            begin: startAlignment,
            end: endAlignment,
          ),
        ),
        child: Center(
          child: SizedBox(
            width: double.infinity,
            child: Container(
              margin: const EdgeInsets.all(40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    questions[currentQuestion].text,
                    style: GoogleFonts.notoSansOsmanya(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  ...questions[currentQuestion].getShuffledAnswers().map(
                    (answer) {
                      return AnswerButton(
                        answerText: answer,
                        onTap: () {
                          answerQuestion(answer);
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
