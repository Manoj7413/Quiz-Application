import 'package:flutter/material.dart';
import 'package:quizapp/homepage.dart';
import 'package:quizapp/quizpage.dart';
class QuizSummaryPage extends StatelessWidget {
  final int totalQuestions;
  final int correctAnswers;

  const QuizSummaryPage({
    Key? key,
    required this.totalQuestions,
    required this.correctAnswers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Summary'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Quiz Completed!',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Text(
              'Total Questions: $totalQuestions',
              style: const TextStyle(fontSize: 18),
            ),
            Text(
              'Correct Answers: $correctAnswers',
              style: const TextStyle(fontSize: 18, color: Colors.green),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>MyHomePage(title: 'Quiz App'))); 
              },
              child: const Text('Retry Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
