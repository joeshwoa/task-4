import 'package:flutter/material.dart';
import 'package:task4/screens/register_scr.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nav();
  }

  nav() async {
    await Future.delayed(Duration(seconds: 3), () {});
    Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Register()))
        .then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Center(child: Icon(Icons.whatshot_outlined))),
      backgroundColor: Colors.grey,
    );
  }
}
