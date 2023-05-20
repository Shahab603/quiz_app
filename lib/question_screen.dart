import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import './data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          ...currentQuestion.answers.map(
            (answer) => AnswerButton(answerText: answer, onTap: () {}),
          ),
        ],
      ),
    );
  }
}
