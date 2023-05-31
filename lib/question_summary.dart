import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.dataSummary});

  final List<Map<String, Object>> dataSummary;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: dataSummary.map((data) {
        return Row(
          children: [
             Text(((data['question'] as int) + 1).toString()),

          ],
        );
      }).toList(),
    );
  }
}
