import 'dart:ui';

class Category {
  final String name;
  final String icon;
  final Color color;
  final String imgName;
  List<Category> subCategories;

  Category({
    required this.name,
    required this.icon,
    required this.color,
    required this.imgName,
    required this.subCategories,
  });
}
