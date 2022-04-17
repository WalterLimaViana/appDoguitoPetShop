import 'package:doguito_petshop/helpers/iconHelper.dart';
import 'package:doguito_petshop/models/category.dart';
import 'package:flutter/material.dart';

class Utils {
  static List<Category> getMockedCategories() {
    return [
      Category(
          color: Colors.white,
          name: "Cachorros",
          imgName: "hospedagem",
          icon: IconFontHelper.DOG,
          subCategories: []),
      Category(
          color: Colors.white,
          name: "Gatos",
          imgName: "hospedagem",
          icon: IconFontHelper.CAT,
          subCategories: []),
      Category(
          color: Colors.white,
          name: "Passáros",
          imgName: "hospedagem",
          icon: IconFontHelper.BIRD,
          subCategories: []),
      Category(
          color: Colors.white,
          name: "Peixes",
          imgName: "hospedagem",
          icon: IconFontHelper.FISH,
          subCategories: []),
      Category(
          color: Colors.white,
          name: "Outros Pets",
          imgName: "hospedagem",
          icon: IconFontHelper.RABBIT,
          subCategories: []),
    ];
  }
}
