import 'package:doguito_petshop/helpers/iconHelper.dart';
import 'package:doguito_petshop/models/category.dart';
import 'package:flutter/material.dart';

class Utils {
  static List<Category> getMockedCategories() {
    return [
      Category(
          color: Color.fromARGB(255, 250, 192, 2),
          name: "Cachorros",
          imgName: "hospedagem",
          icon: IconFontHelper.DOG,
          subCategories: []),
      Category(
          color: Color.fromARGB(255, 253, 2, 2),
          name: "Gatos",
          imgName: "hospedagem",
          icon: IconFontHelper.CAT,
          subCategories: []),
      Category(
          color: Color.fromARGB(255, 4, 248, 228),
          name: "Passáros",
          imgName: "hospedagem",
          icon: IconFontHelper.BIRD,
          subCategories: []),
      Category(
          color: Color.fromARGB(255, 61, 252, 4),
          name: "Peixes",
          imgName: "hospedagem",
          icon: IconFontHelper.FISH,
          subCategories: []),
      Category(
          color: Color.fromARGB(255, 247, 2, 165),
          name: "Outros Pets",
          imgName: "hospedagem",
          icon: IconFontHelper.RABBIT,
          subCategories: []),
    ];
  }
}
