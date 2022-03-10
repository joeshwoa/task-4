import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:task4/core/size_config.dart';
import 'package:task4/screens/register_scr.dart';
import 'package:task4/screens/splash_scr.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:
      //Splash()
      AnimatedSplashScreen(splash: Icons.whatshot_outlined,duration: 2500,nextScreen: Register(),),
    );
  }
}
