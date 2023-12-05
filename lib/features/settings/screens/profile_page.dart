import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: CustomNavigationDrawer(),
      //uncomment above line and import to use navigation drawer at this page
      appBar: AppBar(
        title: const Text('Profile Page'),
        backgroundColor: Colors.yellowAccent,
      ),
    );
    ;
  }
}
