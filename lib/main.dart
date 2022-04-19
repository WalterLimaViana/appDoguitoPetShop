import 'package:doguito_petshop/app_widget.dart';
import 'package:doguito_petshop/login_page.dart';
import 'package:doguito_petshop/pages/home_page.dart';
import 'package:doguito_petshop/pages/produtos_page.dart';
import 'package:doguito_petshop/splash.dart';
import 'package:doguito_petshop/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'app_widget.dart';
import 'main_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(duration: 3, goToPage: MyApp())));
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  static final String title = 'Firebase Auth';
  @override
  Widget build(BuildContext context) => MaterialApp(
        scaffoldMessengerKey: Utils.messengerKey,
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData.light().copyWith(
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)),
        home: MainPage(),
      );
}
