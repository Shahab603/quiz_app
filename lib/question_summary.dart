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
            //there was error of Null is not a subtype of int this is solved by chatGPT provided the code 
            final questionIndex = ((data['question_index'] as int? ) ) ?? 0;
            final question = data['question'] as String? ?? '';
            final chosenAnswer = data['chosen_answer'] as String? ?? '';
            final correctAnswer = data['correct_answer'] as String? ?? '';
            // until this chat gpt provided. the variables declare upper is provided by
            return Row(
              children: [
                
                
                 Text((questionIndex + 1).toString()) ,
                 Expanded(
                   child: Column(children: [
                    Text(question),
                    const SizedBox(height: 5,),
                    Text(chosenAnswer),
                    Text(correctAnswer),
                 
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
