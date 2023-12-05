import 'dart:async';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HostQuizMainPage extends StatefulWidget {
  static const String routeName = '/host-quiz-main-page';
  const HostQuizMainPage({super.key});

  @override
  State<HostQuizMainPage> createState() => _HostQuizMainPageState();
}

class _HostQuizMainPageState extends State<HostQuizMainPage> {
  int _currentQuestionIndex = 0;

  List<Question> _questions = [
    Question("What is the capital of France?",
        ["Paris", "Berlin", "Madrid", "Rome"], "Paris"),
    Question("Which planet is known as the Red Planet?",
        ["Earth", "Mars", "Jupiter", "Saturn"], "Mars"),
    // Add more questions as needed
  ];

  int _secondsRemaining = 30;
  late Timer _timer;
  String? _selectedOption;

  void _selectOption(String option) {
    setState(() {
      // Check if an option is not already selected
      if (_selectedOption == null) {
        _selectedOption = option;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_secondsRemaining > 0) {
          _secondsRemaining--;
        } else {
          _timer.cancel();
          // Handle time-up logic here, e.g., move to the next question or end the quiz
          _moveToNextQuestion();
        }
      });
    });
  }

  void _moveToNextQuestion() {
    setState(() {
      if (_currentQuestionIndex < _questions.length - 1) {
        // If there are more questions, move to the next question
        _currentQuestionIndex++;
        _secondsRemaining = 30; // Reset the timer for the new question
        _selectedOption =
            null; // Clear the selected option for the new question
        _startTimer(); // Start the timer for the new question
      } else {
        // If there are no more questions, end the quiz or navigate to the result page
        // Implement your logic here, e.g., show the result page
        print("Quiz ended!");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz Running..."),
        backgroundColor: Colors.yellowAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Question
              Text(
                _questions[_currentQuestionIndex].question,
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              // Options
              Column(
                children:
                    _questions[_currentQuestionIndex].options.map((option) {
                  bool isSelected = _selectedOption == option;
                  return GestureDetector(
                    onTap: () {
                      _selectOption(option);
                    },
                    child: Container(
                      width: 250,
                      height: 40,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                        color: isSelected ? Colors.black : Colors.transparent,
                      ),
                      child: Center(
                        child: Text(
                          option,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: isSelected ? Colors.white : Colors.black),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
      // Timer using circular progress indicator fixed at the bottom of the screen
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CircularPercentIndicator(
          radius: 30.0,
          lineWidth: 8.0,
          percent: _secondsRemaining / 30, // assuming a 30-second countdown
          center: Text("$_secondsRemaining"),
          progressColor: Color.fromARGB(255, 252, 171, 49),
        ),
      ),
    );
  }
}

class Question {
  String question;
  List<String> options;
  String correctAnswer;

  Question(this.question, this.options, this.correctAnswer);
}
