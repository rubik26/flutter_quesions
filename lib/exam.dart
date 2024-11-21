import 'package:flutter/material.dart';

const colorList = [Colors.purple, Colors.purpleAccent];

class Quesions extends StatefulWidget {
  const Quesions({super.key});

  @override
  State<StatefulWidget> createState() {
    return QuesionsState();
  }
}

class QuesionsState extends State {
  @override
  Widget build(BuildContext context) {
    const AlignmentGeometry startAlignment = Alignment.topLeft;
    const AlignmentGeometry endAlignment = Alignment.bottomRight;
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: colorList, begin: startAlignment, end: endAlignment),
      ),
      child: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Quesions...",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ],
        ),
      ),
    ));
  }
}
