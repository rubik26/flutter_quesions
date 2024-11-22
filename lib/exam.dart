import 'package:flutter/material.dart';

const colorList = [Colors.purple, Colors.purpleAccent];

class Quesions extends StatefulWidget {
  const Quesions({super.key});

  @override
  State<StatefulWidget> createState() => _QuesionsState();
}

class _QuesionsState extends State {
  String quesions = "Loading Quesions...";

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() {
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        quesions = "Quesions loaded!";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    const AlignmentGeometry startAlignment = Alignment.topLeft;
    const AlignmentGeometry endAlignment = Alignment.bottomRight;
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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              quesions,
              style: const TextStyle(color: Colors.white, fontSize: 30),
            ),
          ],
        ),
      ),
    ));
  }
}
