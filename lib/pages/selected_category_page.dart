import 'package:doguito_petshop/models/category.dart';
import 'package:doguito_petshop/pages/home_page.dart';
import 'package:doguito_petshop/pages/produtos_page.dart';
import 'package:doguito_petshop/widgets/category_icon.dart';
import 'package:flutter/material.dart';

class SelectedCategoryPage extends StatelessWidget {
  Category? selectedCategory;

  SelectedCategoryPage({this.selectedCategory});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CategoryIcon(
                  color: this.selectedCategory!.color,
                  iconName: this.selectedCategory!.icon),
              Text(this.selectedCategory!.name!,
                  style: TextStyle(
                      color: this.selectedCategory!.color, fontSize: 20))
            ],
          )
        ],
      )),
    );
  }
}
