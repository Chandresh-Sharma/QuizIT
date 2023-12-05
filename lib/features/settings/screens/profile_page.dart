import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  static const String routeName = '/profile-page';
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
