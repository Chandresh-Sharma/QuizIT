import "package:flutter/material.dart";
import 'package:quizit/features/auth/screens/custom/CustomDesginedButton.dart';
import 'package:quizit/features/auth/screens/custom/CustomScreen.dart';
import 'package:quizit/features/auth/screens/auth/auth_screen.dart';
import "package:quizit/features/auth/screens/home/home_screen.dart";

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
