import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizit/common/widgets/CustomNavigationDrawer.dart';
import 'package:quizit/constants/global_variables.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: GlobalVariables.secondaryColor,
      ),
      drawer: const CustomNavigationDrawer(),
      body: Center(
        child: Column(
          children: [
            Text(
              user.toJson(),
            ),
          ],
        ),
      ),
    );
  }
}
