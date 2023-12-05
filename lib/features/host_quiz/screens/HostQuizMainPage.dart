import 'package:flutter/material.dart';

class HostQuizMainPage extends StatefulWidget {
  static const String routeName = '/host-quiz-main-page';
  const HostQuizMainPage({super.key});

  @override
  State<HostQuizMainPage> createState() => _HostQuizMainPageState();
}

class _HostQuizMainPageState extends State<HostQuizMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Host Quiz page'),
      ),
    );
  }
}
