import 'package:flutter/material.dart';
import 'package:konvert/home.dart';
import 'dart:async';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override

  void initState(){
    super.initState();
    Timer(const Duration(seconds:3),()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const Home())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:10, right:10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset('appicon.png'),
                  ),
                ),
              ),
              const SizedBox(height: 30,),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "KONVERT",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    color: Color(0xff303030),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(2.0),
                child: Text(
                  "Conversion made simple",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                    color: Color(0xff303030),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
