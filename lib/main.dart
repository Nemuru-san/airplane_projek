import 'package:airplane_projek/ui/pages/bonusPage.dart';
import 'package:airplane_projek/ui/pages/getStarted.dart';
import 'package:airplane_projek/ui/pages/mainPage.dart';
import 'package:flutter/material.dart';
import 'ui/pages/splashPage.dart';
import 'ui/pages/signUp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: splashPage(),
      routes: {
        '/': (context) => splashPage(),
        '/get-started': (context) => getStartedPage(),
        '/sign-up': (context) => signUpPage(),
        '/bonus': (context) => bonusPage(),
        '/main': (context) => mainPage(),
      },
      // home: getStartedPage(),
    );
  }
}
