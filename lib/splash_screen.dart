import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _loadSplashScreen();
  }

  _loadSplashScreen() async {
    var _duration = const Duration(seconds: 10);
    return Timer(_duration, _navigateToHomeScreen);
  }

  _navigateToHomeScreen() {
    Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFF1F1E1C),
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/birthday.gif',
                width: double.infinity,
                height: 650,
              ),
              const SizedBox(height: 20.0),
              // const SpinKitFadingCube(
              //   color: Colors.blue,
              //   size: 20.0,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
