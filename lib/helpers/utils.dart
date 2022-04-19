import 'package:doguito_petshop/helpers/iconHelper.dart';
import 'package:doguito_petshop/models/category.dart';
import 'package:flutter/material.dart';

class Utils {
  static List<Category> getMockedCategories() {
    return [
      Category(
          color: Color.fromARGB(255, 250, 192, 2),
          name: "Cachorros",
          imgName: "cachorro-filhotes",
          icon: IconFontHelper.DOG,
          subCategories: []),
      Category(
          color: Color.fromARGB(255, 253, 2, 2),
          name: "Gatos",
          imgName: "gatos-filhotes",
          icon: IconFontHelper.CAT,
          subCategories: []),
      Category(
          color: Color.fromARGB(255, 4, 248, 228),
          name: "Passáros",
          imgName: "passaros",
          icon: IconFontHelper.BIRD,
          subCategories: []),
      Category(
          color: Color.fromARGB(255, 61, 252, 4),
          name: "Peixes",
          imgName: "peixes",
          icon: IconFontHelper.FISH,
          subCategories: []),
      Category(
          color: Color.fromARGB(255, 247, 2, 165),
          name: "Outros Pets",
          imgName: "outros-pets",
          icon: IconFontHelper.RABBIT,
          subCategories: []),
    ];
  }
}
