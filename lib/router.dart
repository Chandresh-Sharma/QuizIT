import "package:flutter/material.dart";
import 'package:quizit/features/custom/screens/CustomDesginedButton.dart';
import 'package:quizit/features/custom/screens/CustomScreen.dart';
import 'package:quizit/features/auth/screens/auth_screen.dart';
import 'package:quizit/features/home/screens/home_screen.dart';
import 'package:quizit/features/host_quiz/screens/HostQuizMainPage.dart';
import 'package:quizit/features/settings/screens/profile_page.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AuthScreen(),
      );
    case CustomScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const CustomScreen(),
      );
    case HomeScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HomeScreen(),
      );
    case CustomDesginButton.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const CustomDesginButton(),
      );
    case ProfilePage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const ProfilePage(),
      );
    case HostQuizMainPage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HostQuizMainPage(),
      );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text("Screen doesnt exist!"),
          ),
        ),
      );
  }
}
