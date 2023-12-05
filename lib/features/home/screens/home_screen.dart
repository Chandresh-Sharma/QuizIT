import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizit/common/widgets/CustomButton.dart';
import 'package:quizit/common/widgets/CustomNavigationDrawer.dart';
import 'package:quizit/constants/global_variables.dart';
import 'package:quizit/features/host_quiz/screens/HostQuizMainPage.dart';
import 'package:quizit/features/settings/screens/profile_page.dart';
import 'package:quizit/providers/user_provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home-screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void changeToHomeScreen() {
    Navigator.pushNamed(context, ProfilePage.routeName);
  }

  void changeToHostQuizMainPage() {
    Navigator.pushNamed(context, HostQuizMainPage.routeName);
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text(
            'Dashboard',
          ),
        ),
        backgroundColor: GlobalVariables.secondaryColor,
      ),
      drawer: const CustomNavigationDrawer(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              user.toJson(),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 50,
                bottom: 25,
                left: 90,
                right: 90,
              ),
              child: CustomButton(
                text: 'Join',
                onTap: changeToHomeScreen,
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                bottom: 25,
                left: 90,
                right: 90,
              ),
              child: CustomButton(
                text: 'Host',
                onTap: changeToHostQuizMainPage,
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                bottom: 25,
                left: 90,
                right: 90,
              ),
              child: CustomButton(
                text: 'Result',
                onTap: () {
                  return;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
