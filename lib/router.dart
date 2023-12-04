import "package:flutter/material.dart";
import 'package:quizit/features/custom/screens/CustomDesginedButton.dart';
import 'package:quizit/features/custom/screens/CustomScreen.dart';
import 'package:quizit/features/auth/screens/auth_screen.dart';
import 'package:quizit/features/home/screens/home_screen.dart';

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
