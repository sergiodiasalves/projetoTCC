import 'package:flutter/material.dart';
import 'package:proj_facilita_cerqueira/src/pages/complaints.dart';
import 'package:proj_facilita_cerqueira/src/pages/home.dart';
import 'package:proj_facilita_cerqueira/src/pages/information.dart';
import 'package:proj_facilita_cerqueira/src/pages/news.dart';
import 'package:proj_facilita_cerqueira/src/widgets/splash_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: 
        GlobalMaterialLocalizations.delegates,
        supportedLocales:  const [ Locale('pt', 'BR')],
      debugShowCheckedModeBanner: false,
      title: 'Facilita Cerqueira',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/SplashScreen',
      routes: {
        '/SplashScreen': (_) => const SplashScreenPage(),
        '/Home': (_) => const HomePage(),
        '/Information': (_) => const InformationPage(),
        '/Complaints': (_) => const ComplaintsPage(),
        '/News': (_) => const NewsPage(),      
      },
    );
  }
}
