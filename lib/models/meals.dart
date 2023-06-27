import 'package:flutter/material.dart';

enum Complexity {
  Smple,
  Challegin,
  Hard,
}

enum Affordability {
  // khả năng chi trả
  Affordabe,
  Pricey,
  Luxurios,
}

class Meals {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients; //thành phần
  final List<String> step;
  final int duration; //khoảng thời gian
  final Complexity complexity; //sự phức tạp
  final Affordability affordablity;
  final bool isGlutenFree; //k chứa gluten
  final bool isLanctoseFree; //k chứa đường
  final bool isVegan; //thuần chay
  final bool isVegetarian; // người ăn chay

  const Meals(
      {required this.id,
      required this.categories,
      required this.title,
      required this.imageUrl,
      required this.ingredients,
      required this.step,
      required this.duration,
      required this.complexity,
      required this.affordablity,
      required this.isGlutenFree,
      required this.isLanctoseFree,
      required this.isVegan,
      required this.isVegetarian});
}
