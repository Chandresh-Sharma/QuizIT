import 'package:flutter/material.dart';
// import 'package:quizit/common/widgets/CustomNavigationDrawer.dart';

class SettingsMainPage extends StatelessWidget {
  const SettingsMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: CustomNavigationDrawer(),
      //uncomment above line and import to use navigation drawer at this page
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Colors.yellowAccent,
      ),
    );
  }
}
