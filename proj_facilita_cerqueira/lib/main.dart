import 'package:flutter/material.dart';
import 'package:proj_facilita_cerqueira/pages/home.dart';
import 'package:proj_facilita_cerqueira/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Facilita Cerqueira',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/SplashScreen',
      routes: {
        '/SplashScreen': (_) => const SplashScreenPage(),
        '/Home': (_) => const HomePage(),
      },
    );
  }
}
