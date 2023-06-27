import 'package:flutter/material.dart';

import '../widgets/meals_item.dart';

import '../dumy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/categories-meals';

  // final String categoryID;
  // final String categoryTitle;

  // CategoryMealsScreen(this.categoryID, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    //cấu hình key để kết nối route
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final cateID = routeArgs['id'];
    final cateTitle = routeArgs['title'];
    //lấy dữ liệu từ dumy_data từ DUMU_MEALS
    final categoryMeal = DUMY_MEALS.where((meal) {
      return meal.categories.contains(cateID);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          cateTitle as String,
          style: Theme.of(context).primaryTextTheme.bodyLarge,
        ),
      ),
      body: ListView.builder(
          itemBuilder: (ctx, index) {
            return Column(
              children: [
                MealsItem(
                  title: categoryMeal[index].title,
                  imageUrl: categoryMeal[index].imageUrl,
                  durcation: categoryMeal[index].duration,
                  complexity: categoryMeal[index].complexity,
                  affordability: categoryMeal[index].affordablity,
                ),
              ],
            );
          },
          itemCount: categoryMeal.length),
    );
  }
}
