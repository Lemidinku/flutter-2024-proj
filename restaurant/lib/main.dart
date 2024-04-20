import 'package:flutter/material.dart';
import "order_now.dart";

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
      home: const OrderNowPage(),
    );
  }
}
