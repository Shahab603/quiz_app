import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.dataSummary});

  final List<Map<String, Object>> dataSummary;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: dataSummary.map((data) {
            return Row(
              children: [
                 Text(((data['question_index'] as int) + 1 ).toString()),
                 Expanded(
                   child: Column(children: [
                    Text(data['question'] as String),
                    const SizedBox(height: 5,),
                    Text(data['choosen_answer'] as String),
                    Text(data['correct-answer'] as String),
                 
                   ],),
                 )
          
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
