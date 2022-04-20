import 'package:doguito_petshop/helpers/iconHelper.dart';
import 'package:doguito_petshop/helpers/utils.dart';
import 'package:doguito_petshop/models/category.dart';
import 'package:doguito_petshop/pages/home_page.dart';
import 'package:doguito_petshop/pages/selected_category_page.dart';
import 'package:doguito_petshop/splash.dart';
import 'package:doguito_petshop/widgets/category_card.dart';
import 'package:doguito_petshop/widgets/category_icon.dart';
import 'package:flutter/material.dart';

class ProdutosPage extends StatefulWidget {
  @override
  State<ProdutosPage> createState() => _ProdutosPageState();
}

class _ProdutosPageState extends State<ProdutosPage> {
  List<Category> categories = Utils.getMockedCategories();

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
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            );
          },
        ),
        title: Center(
            child:
                Text('Produtos', style: TextStyle(color: Colors.blueAccent))),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Text('Selecione uma categoria',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.blueAccent, fontSize: 16)),
            ),
            Expanded(
                child: ListView.builder(
                    padding: EdgeInsets.only(bottom: 20),
                    itemCount: categories.length,
                    itemBuilder: (BuildContext ctx, int index) {
                      return CategoryCard(
                          category: categories[index],
                          onCardClick: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SelectedCategoryPage(
                                          selectedCategory: null,
                                        )));
                          });
                    })),
          ],
        ),
      ),
    );
  }
}
