import 'package:flutter/material.dart';
import 'package:quizapp/quizpage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body:Center(
          child: ElevatedButton(
              child: Text(
              'Start Quiz!',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
              onPressed: (){
                Navigator.push(
                  (context),
                  MaterialPageRoute(builder:(context)=>QuizPage()),
                );
              }
          ),
        )
    );
  }
}