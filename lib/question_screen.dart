import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import './data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentIndexQuestion = 0;
  void answerQuestion() {
    setState(() {
      currentIndexQuestion++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentIndexQuestion];
    return Center(
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffledList().map(
                  (answer) => AnswerButton(answerText: answer, onTap: answerQuestion),
                ),
          ],
        ),
      ),
    );
  }
}
