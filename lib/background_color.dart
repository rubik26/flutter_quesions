import 'package:flutter/material.dart';

class GradientColor extends StatelessWidget {
  const GradientColor({required this.colorList, super.key});

  final List<Color> colorList;
  final String imageIcon = "assets/images/quiz-logo.png";

  @override
  Widget build(BuildContext context) {
    const AlignmentGeometry startAlignment = Alignment.topLeft;
    const AlignmentGeometry endAlignment = Alignment.bottomRight;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: colorList, begin: startAlignment, end: endAlignment),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                imageIcon,
                width: 300,
                height: 300,
              ),
              const SizedBox(
                height: 35,
              ),
              TextButton(
                onPressed: () => {Navigator.pushNamed(context, '/exam')},
                style: TextButton.styleFrom(
                  side: const BorderSide(color: Colors.white, width: 2),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                child: const Text(
                  "Enter to Exam",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
