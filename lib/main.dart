import 'package:flutter/material.dart';
import 'home.dart';
import 'profile.dart';
import 'routine.dart';

void main() {
  runApp(const GymBuddyApp());
}

class GymBuddyApp extends StatelessWidget {
  const GymBuddyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GymBuddy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/profile': (context) => const ProfilePage(),
        '/routine': (context) => const RoutinePage(),
      },
    );
  }
}
