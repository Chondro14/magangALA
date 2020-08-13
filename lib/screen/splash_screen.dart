import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:magang_app/screen/bottomnavigation.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green[300],
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: AnimatedSplashScreen(
          splash: "images/ala-big.png",
          nextScreen: Bottomnavigation(),
          centered: true,
          splashTransition: SplashTransition.scaleTransition,
          pageTransitionType: PageTransitionType.leftToRight,
          duration: 4000,
          backgroundColor: Colors.green[300],
        ),
      ),
    );
  }
}
