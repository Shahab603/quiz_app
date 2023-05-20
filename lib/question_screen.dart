import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return  Center(
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('What is your Question!'),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: (){},
            child: const Text('Answer 1 '),
          ),
         
          ElevatedButton(
            onPressed: (){},
            child: const Text('Answer 2 '),
          ),
        
          ElevatedButton(
            onPressed: (){},
            child: const Text('Answer 3 '),
          ),
          
        ],
      ),
    );
  }
}
