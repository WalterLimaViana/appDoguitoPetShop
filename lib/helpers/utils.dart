import 'package:doguito_petshop/helpers/appcolors.dart';
import 'package:doguito_petshop/helpers/iconHelper.dart';
import 'package:doguito_petshop/models/category.dart';
import 'package:doguito_petshop/servicos_categories/models/subcategories.dart';
import 'package:flutter/material.dart';

class Utils {
  static List<Category> getMockedCategories() {
    return [
      Category(
          color: AppColors.YELLOW,
          name: "Cachorros",
          imgName: "cachorro-filhotes",
          icon: IconFontHelper.DOG,
          subCategories: [
            SubCategory(
                color: AppColors.YELLOW,
                name: "Ração",
                imgName: "produto",
                icon: IconFontHelper.PETS),
            SubCategory(
                color: AppColors.YELLOW,
                name: "Ração",
                imgName: "produto",
                icon: IconFontHelper.PETS),
            SubCategory(
                color: AppColors.YELLOW,
                name: "Ração",
                imgName: "produto",
                icon: IconFontHelper.PETS),
            SubCategory(
                color: AppColors.YELLOW,
                name: "Ração",
                imgName: "produto",
                icon: IconFontHelper.PETS),
            SubCategory(
                color: AppColors.YELLOW,
                name: "Ração",
                imgName: "produto",
                icon: IconFontHelper.PETS),
            SubCategory(
                color: AppColors.YELLOW,
                name: "Ração",
                imgName: "produto",
                icon: IconFontHelper.PETS),
          ]),
      Category(
          color: AppColors.RED,
          name: "Gatos",
          imgName: "gatos-filhotes",
          icon: IconFontHelper.CAT,
          subCategories: []),
      Category(
          color: AppColors.AQUABLUE,
          name: "Passáros",
          imgName: "passaros",
          icon: IconFontHelper.BIRD,
          subCategories: []),
      Category(
          color: AppColors.GREEN,
          name: "Peixes",
          imgName: "peixes",
          icon: IconFontHelper.FISH,
          subCategories: []),
      Category(
          color: AppColors.PINK,
          name: "Outros Pets",
          imgName: "outros-pets",
          icon: IconFontHelper.RABBIT,
          subCategories: []),
    ];
  }
}
