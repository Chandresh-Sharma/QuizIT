import 'package:flutter/material.dart';

class QuizListPage extends StatefulWidget {
  static const String routeName = '/quiz-list-page';
  const QuizListPage({super.key});

  @override
  State<QuizListPage> createState() => _QuizListPage();
}

class _QuizListPage extends State<QuizListPage> {
  final List<Quiz> quizzes = [
    Quiz(name: 'Quiz 1 ', code: 'QZ123'),
    Quiz(name: 'Quiz 2 ', code: 'QZ456'),
    Quiz(name: 'Quiz 3 ', code: 'QZ789'),
    // Add more quizzes as needed
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz List'),
        backgroundColor: Colors.yellowAccent,
      ),
      body: ListView.builder(
        itemCount: quizzes.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5.0,
            margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16.0),
              title: Text(
                quizzes[index].name,
                style: const TextStyle(
                    fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Code: ${quizzes[index].code}',
                style: const TextStyle(fontSize: 14.0),
              ),
              trailing: ElevatedButton(
                onPressed: () {
                  // Handle host button press for the specific quiz
                  print('Host button pressed for ${quizzes[index].name}');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange, // Change button color
                ),
                child: const Text(
                  'Host',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          );
        },
      ),
    );
    ;
  }
}

class Quiz {
  final String name;
  final String code;

  Quiz({required this.name, required this.code});
}
