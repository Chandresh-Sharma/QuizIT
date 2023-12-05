import 'package:flutter/material.dart';
import 'package:quizit/constants/global_variables.dart';
import 'package:quizit/features/home/screens/home_screen.dart';
import 'package:quizit/features/settings/screens/profile_page.dart';
import 'package:quizit/features/settings/screens/settings_mainpage.dart';

class CustomNavigationDrawer extends StatefulWidget {
  const CustomNavigationDrawer({super.key});

  @override
  State<CustomNavigationDrawer> createState() => _CustomNavigationDrawerState();
}

class _CustomNavigationDrawerState extends State<CustomNavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    Widget buildHeader(BuildContext context) {
      return Material(
        color: GlobalVariables.navigationDrawerHeader,
        child: InkWell(
          onTap: () {
            Navigator.pop(context);

            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const SettingsMainPage(),
              ),
            );
          },
          child: Container(
            padding: EdgeInsets.only(
                top: 24 + MediaQuery.of(context).padding.top, bottom: 24),
            child: Column(
              children: const [
                CircleAvatar(
                  radius: 52,
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1575936123452-b67c3203c357'),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Hello World',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.blueAccent,
                  ),
                ),
                Text(
                  'HelloWorld2@gmail.com',
                  style: TextStyle(fontSize: 16, color: Colors.amberAccent),
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget buildMenuItems(BuildContext context) {
      return Container(
        padding: const EdgeInsets.all(24), //Total Spacing from all sides
        child: Wrap(
          runSpacing: 16, //Vertical Spacing
          children: [
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text('Home'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text('New'),
              onTap: () {
                Navigator.pop(context);

                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ProfilePage(),
                  ),
                );
              },
            ),
            const Divider(
              color: GlobalVariables.navigationDrawerDivider,
            ),
            ListTile(
              leading: const Icon(Icons.settings_outlined),
              title: const Text('Settings'),
              onTap: () {
                // Close Navigation Drawer before closing

                Navigator.pop(context);

                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SettingsMainPage(),
                  ),
                );
              },
            ),
          ],
        ),
      );
    }

    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildHeader(context),
            buildMenuItems(context),
          ],
        ),
      ),
    );
  }
}
