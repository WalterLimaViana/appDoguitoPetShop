import 'dart:ui';

import 'package:flutter/material.dart';

import 'app_widget.dart';
import 'login_page.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetoHome();
  }

  _navigatetoHome() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => AppWidget()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.blueAccent,
          ),
          Container(
              child: Text('Splash Screen',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
        ],
      ),
    ));
  }
}
