import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 10)).then(
      (_) => Navigator.of(context).pushReplacementNamed('/Home'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          EasySplashScreen(
            logo: Image(
              height: 900,
              width: 900,
              image: AssetImage(
                'assets/images/Bandeira_CC.png', 
              ),
            ),
            title: Text(
              "Facilita Cerqueira",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 48,
                fontWeight: FontWeight.w500,
              ),
            ),
            gradientBackground: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blue.shade200,
                Colors.blue.shade800,
              ],
            ),
            backgroundColor: Colors.grey.shade400,
            showLoader: true,
            loadingText: Text(
              "Loading...",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 32,
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }
}
