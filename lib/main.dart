import 'package:doguito_petshop/app_widget.dart';
import 'package:doguito_petshop/login_page.dart';
import 'package:doguito_petshop/pages/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'app_widget.dart';
import 'main_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  static final String title = 'Firebase Auth';
  @override
  Widget build(BuildContext context) => MaterialApp(
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData.dark().copyWith(
            colorScheme:
                ColorScheme.fromSwatch(primarySwatch: Colors.blueGrey)),
        home: MainPage(),
      );
}






// main() {
//   runApp(AppWidget());
// }

// main() {
//   MaterialApp(
//     home: MainPage(),
//   );
// }

// class MainPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) => Scaffold(
//         body: StreamBuilder<User?>(
//           stream: FirebaseAuth.instance.authStateChanges(),
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               return HomePage();
//             } else {
//               return LoginPage();
//             }
//           },
//         ),
//       );
// }
