import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:doguito_petshop/app_controller.dart';
import 'package:doguito_petshop/pages/categorias_page.dart';
import 'package:doguito_petshop/pages/home_page.dart';
import 'package:doguito_petshop/pages/inicio_page.dart';
import 'package:doguito_petshop/pages/produtos_page.dart';
import 'package:doguito_petshop/pages/servicos_page.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.lightBlue,
            //OBrightness abaixo é um ternário que mostra como deve ser a mudança
            brightness: AppController.instance.isDarkTheme
                ? Brightness.dark
                : Brightness.light,
          ),
          //Instanciando as rotas:
          initialRoute: '/',
          routes: {
            '/': (context) => AnimatedSplashScreen(
                splash: Icons.pets,
                duration: 3000,
                splashTransition: SplashTransition.rotationTransition,
                backgroundColor: Colors.lightBlue,
                nextScreen: LoginPage()),
            '/login': (context) => LoginPage(),
            '/home': (context) => HomePage(),
            '/categorias': (context) => CategoriasPage(),
            '/produtos': (context) => ProdutosPage(),
            '/servicos': (context) => ServicosPage(),
          },
        );
      },
    );
  }
}
