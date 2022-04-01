import 'package:flutter/widgets.dart';

class AppController extends ChangeNotifier {
  //Instanciar a própria classe utilizando um static
  static AppController instance = AppController();
  bool isDarkTheme = false;
  changeTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }
}
