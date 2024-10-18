import 'package:flutter/material.dart';
import 'package:task1/screens/welcome_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task1', // Add a title for your app
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: WelcomeScreen(), // Load the WelcomeScreen as the home widget
    );
  }
}
