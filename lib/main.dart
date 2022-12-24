import 'package:flutter/material.dart';
import 'package:konvert/views/splashview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Konvert',
      theme: ThemeData(
        useMaterial3: true,
        //primarySwatch: Colors.blueGrey,
        colorSchemeSeed: Colors.grey,
      ),
      home: const SplashView(),
    );
  }
}
