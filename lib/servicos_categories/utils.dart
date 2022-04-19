import 'package:doguito_petshop/models/category.dart';
import 'package:flutter/material.dart';

import '../helpers/iconHelper.dart';

class Utils {
  static List<Category> getMockedCategories() {
    return [
      Category(
          color: Color.fromARGB(255, 250, 192, 2),
          name: "Banho e Tosa",
          imgName: "banho-e-tosa",
          icon: IconFontHelper.BATHDOG,
          subCategories: []),
      Category(
          color: Color.fromARGB(255, 253, 2, 2),
          name: "Fármacia",
          imgName: "farmacia",
          icon: IconFontHelper.CRUZ,
          subCategories: []),
      Category(
          color: Color.fromARGB(255, 4, 248, 228),
          name: "Veterinário",
          imgName: "veterinario",
          icon: IconFontHelper.VETERINARY,
          subCategories: []),
      Category(
          color: Color.fromARGB(255, 61, 252, 4),
          name: "Pet Sitter",
          imgName: "pet-sitter",
          icon: IconFontHelper.RUNNINGDOG,
          subCategories: []),
      Category(
          color: Color.fromARGB(255, 247, 2, 165),
          name: "Hospedagem",
          imgName: "hospedagem",
          icon: IconFontHelper.DOGHOUSE,
          subCategories: []),
    ];
  }
}
