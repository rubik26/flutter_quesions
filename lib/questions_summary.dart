import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, this.colorsList, {super.key});

  final List<Map<String, Object>> summaryData;
  final List<Color> colorsList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map(
        (data) {
          // Проверяем правильность ответа
          bool isCorrect = data['user_answer'] == data['correct_answer'];

          return Row(
            children: [
              // Номер вопроса в круге
              Container(
                width: 40, // Ширина круга
                height: 40, // Высота круга
                decoration: BoxDecoration(
                  color: isCorrect
                      ? colorsList[1]
                      : colorsList[0], // Цвет в зависимости от правильности
                  shape: BoxShape.circle, // Делаем круглый контейнер
                ),
                child: Center(
                  // Центрируем текст внутри круга
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),
                    style: const TextStyle(
                      color: Colors.white, // Белый цвет текста для контраста
                      fontWeight: FontWeight.bold, // Жирный шрифт
                      fontSize: 16, // Размер шрифта
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10), // Отступ между числом и текстом
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Вопрос
                    Text(
                      data['question'] as String,
                      style: const TextStyle(fontSize: 18),
                    ),
                    const SizedBox(
                        height: 5), // Отступ между вопросом и ответами
                    // Правильный ответ
                    Text(
                      'Correct Answer: ${data['correct_answer']}',
                      style: const TextStyle(fontSize: 16, color: Colors.green),
                    ),
                    // Ответ пользователя
                    Text(
                      'Your Answer: ${data['user_answer']}',
                      style: const TextStyle(fontSize: 16, color: Colors.red),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ).toList(),
    );
  }
}
