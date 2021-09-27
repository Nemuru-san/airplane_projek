import 'package:airplane_projek/cubit/page_cubit.dart';
import 'package:airplane_projek/ui/pages/bonusPage.dart';
import 'package:airplane_projek/ui/pages/getStarted.dart';
import 'package:airplane_projek/ui/pages/mainPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'ui/pages/splashPage.dart';
import 'ui/pages/signUp.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
      ],
      child: MaterialApp(
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
      ),
    );
  }
}
