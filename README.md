The error "Null is not a subtype of Int" occurs because the question_index key in the data map can have a value of null. When you try to cast a null value to an int using data['question_index'] as int, it results in the error.

To fix this, you can handle the null case by providing a default value when casting to an int. Here's the corrected code:

import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({Key? key, required this.dataSummary});

  final List<Map<String, Object?>> dataSummary;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: dataSummary.map((data) {
            final questionIndex = (data['question_index'] as int?) ?? 0;
            final question = data['question'] as String? ?? '';
            final chosenAnswer = data['chosen_answer'] as String? ?? '';
            final correctAnswer = data['correct_answer'] as String? ?? '';

            return Row(
              children: [
                Text((questionIndex + 1).toString()),
                Expanded(
                  child: Column(
                    children: [
                      Text(question),
                      const SizedBox(height: 5,),
                      Text(chosenAnswer),
                      Text(correctAnswer),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}


In the corrected code, I added null-aware operators (as int?, as String?) and used the null coalescing operator (??) to provide default values (0 for questionIndex and empty string '' for other variables) if the corresponding keys are null in the data map.