import 'dart:ui';

import 'package:flutter/material.dart';

import 'app_widget.dart';
import 'login_page.dart';

class SplashPage extends StatelessWidget {
  int duration = 0;
  Widget goToPage;

  SplashPage({required this.goToPage, required this.duration});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: this.duration), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => this.goToPage,
          ));
    });

    return Scaffold(
        body: Container(
      color: Color.fromARGB(255, 61, 187, 245),
      child: Center(
        child: Icon(Icons.pets, color: Colors.white, size: 100),
      ),
    ));
  }
}
