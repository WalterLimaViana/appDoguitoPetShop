import 'package:doguito_petshop/pages/home_page.dart';
import 'package:doguito_petshop/pages/produtos_page.dart';
import 'package:flutter/material.dart';

class SelectedCategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProdutosPage()));
              },
            );
          },
        ),
        title: Center(
            child:
                Text('Cachorros', style: TextStyle(color: Colors.blueAccent))),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.blueAccent),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.all(10),
            child: ClipOval(child: Image.asset('assets/img/logo.png')),
          )
        ],
      ),
      body: Container(
        child: Center(child: Text('Cachorros')),
      ),
    );
  }
}
