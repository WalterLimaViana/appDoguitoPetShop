import 'package:doguito_petshop/helpers/utils.dart';
import 'package:doguito_petshop/models/category.dart';
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
        title: Text('Produtos'),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Selecione uma categoria',
                style: TextStyle(color: Colors.black))
          ],
        ),
      ),
    );
  }
}
