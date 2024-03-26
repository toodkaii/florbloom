import 'dart:async';
import 'package:florbloom_app/bottomNav.dart';
import 'package:flutter/material.dart';
import 'package:florbloom_app/screens/home_screen.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  int _delaySecond = 3;
  @override
  void initState() {
    super.initState();
    _delayPage();
  }

  _delayPage() async {
    var _duration = Duration(seconds: _delaySecond);
    return Timer(_duration, gotoMainPage);
  }

  void gotoMainPage() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => BottomNav()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(164, 159, 91, 1),
            ),
          ),
          Center(
            child: Image(
              image: AssetImage('assets/images/logo_new.png'),
            ),
          ),
          Positioned(
            child: Container(
              child: Text(
                'FLORBLOOM',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 32,
                  fontFamily: 'InriaSerif',
                  color: Colors.white,
                ),
              ),
            ),
            bottom: 250,
            left: 10,
            right: 10,
          ),
          Positioned(
            child: Container(
              child: Text(
                'HOUSE',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 24,
                  fontFamily: 'InriaSerif',
                  color: Colors.white,
                ),
              ),
            ),
            bottom: 225,
            left: 10,
            right: 10,
          ),
        ],
      ),
    );
  }
}
