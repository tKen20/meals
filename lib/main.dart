import './screens/category_meals_screen.dart';

import './screens/categories_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My APP COOK',
      //định dạng font chữ theme và màu chữ
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyLarge: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyMedium: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              titleLarge: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      home: CategoriesScreen(),
      //sử dụng routes để chuyển hướng
      routes: {
        // '/categories-meals': (ctx) => CategoryMealsScreen(),

        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
      },
    );
  }
}
