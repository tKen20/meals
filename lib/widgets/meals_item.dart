import '../models/meals.dart';
import 'package:flutter/material.dart';

class MealsItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final int durcation;
  final Complexity complexity;
  final Affordability affordability;

  MealsItem(
      {required this.title,
      required this.imageUrl,
      required this.durcation,
      required this.complexity,
      required this.affordability});

  void _selecMealItem() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _selecMealItem,
      child: Card(
        //một dường hình chữ nhật
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 5,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                //tùy chỉnh đường viền tròn
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
