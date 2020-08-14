import 'package:flutter/material.dart';
import 'package:magang_app/screen/SplashScreenMainView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreenMainView(),
    );
  }
}
