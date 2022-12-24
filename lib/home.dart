import 'package:flutter/material.dart';
import 'package:konvert/views/homeview.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Konvert",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Color(0xff303030),
          ),
        ),
        centerTitle: true,
      ),
      body: const HomeView(),
    );
  }
}
