import '../../models/category.dart';
import 'dart:ui';

class SubCategory extends Category {
  SubCategory({
    required String name,
    String? icon,
    Color? color,
    String? imgName,
  }) : super(
    this.name: name, 
    icon: icon, 
    color: color, 
    imgName: imgName);
}
