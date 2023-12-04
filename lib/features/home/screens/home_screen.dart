import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizit/providers/user_provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home-screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    return Center(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Text(
                user.toJson(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
