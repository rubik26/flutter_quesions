import 'package:flutter/material.dart';
import 'package:flutter_quesions/background_color.dart';
import 'package:flutter_quesions/exam.dart';

void main() {
  const colorList = [Colors.purple, Colors.purpleAccent];
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, initialRoute: '/', routes: {
      '/': (context) => const GradientColor(colorList: colorList),
      '/exam': (context) => Quesions()
    }),
  );
}
