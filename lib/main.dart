import 'package:flutter/material.dart';
import 'package:food_ordering_app/screens/onboardingscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Food Ordering App', home: OnboardingScreen());
  }
}
