import 'package:flutter/material.dart';
import 'package:onboarding_screen/screen/home_screen.dart';

import 'package:onboarding_screen/screen/introduction_screen.dart';

import 'package:shared_preferences/shared_preferences.dart';

bool show = true;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  show = prefs.getBool('ON_BOARDING') ?? true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter on Boarding',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: show ? IntroScreen() : HomeScreen(),
    );
  }
}
