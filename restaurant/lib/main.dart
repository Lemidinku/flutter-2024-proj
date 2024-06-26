import 'package:flutter/material.dart';
import 'package:restaurant/bottom_nav.dart';
import 'package:restaurant/welcome-screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromRGBO(239, 108, 0, 1)),
        useMaterial3: true,
      ),
      home: WelcomePage(),
      routes: {'/entry': (context) => BottomNav()},
    );
  }
}
