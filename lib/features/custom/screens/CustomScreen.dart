import "package:flutter/material.dart";
import 'package:quizit/common/widgets/BorderBox.dart';
import "package:quizit/constants/global_variables.dart";

class CustomScreen extends StatefulWidget {
  static const String routeName = '/custom-screen';
  const CustomScreen({super.key});

  @override
  State<CustomScreen> createState() => _CustomScreenState();
}

class _CustomScreenState extends State<CustomScreen> {
  @override
  Widget build(BuildContext context) {
    //Navigator.pushNamed(context, '');
    final Size size = MediaQuery.of(context).size;
    final double padding = 25;
    return SafeArea(
        child: Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: padding, vertical: padding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BorderBox(
                    height: 50,
                    width: 50,
                    child: Icon(
                      Icons.menu,
                      color: COLOR_BLACK,
                    ),
                  ),
                  BorderBox(
                    height: 50,
                    width: 50,
                    child: Icon(
                      Icons.settings,
                      color: COLOR_BLACK,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
