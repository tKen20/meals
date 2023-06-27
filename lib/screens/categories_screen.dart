import 'package:flutter/material.dart';
import '../dumy_data.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //hien thi gridview dang luoi
    return Scaffold(
      appBar: AppBar(
        title: const Text("APP NAU AN"),
      ),
      body: GridView(
        padding: const EdgeInsets.all(10),
        //ánh xạ dữ liệu từ danh sách category_item
        children: DUMY_CATEGORIES.map((cateData) {
          return CategoryItem(
            cateData.id,
            cateData.title,
            cateData.color,
          );
        }).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
