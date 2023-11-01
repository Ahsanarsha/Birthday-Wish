import 'package:flutter/material.dart';

import 'splash_screen.dart';
import 'home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Birthday Wish',
      debugShowCheckedModeBanner: false,
      // initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => const LandingScreen(),
      },
    );
  }
}
