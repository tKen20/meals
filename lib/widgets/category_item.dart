import '../screens/category_meals_screen.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  CategoryItem(this.id, this.title, this.color);

//phương thức chuyển tiếp danh mục đã chọn navigator suwr dung push
  void _selectCategory(BuildContext ctx) {
    // Navigator.of(ctx).push(
    //   MaterialPageRoute(builder: (_) {
    //     return CategoryMealsScreen(id, title);
    //   }),
    // );
//phương thức chuyển tiếp danh mục đã chọn navigator sử dụng pushName
    Navigator.of(ctx).pushNamed(CategoryMealsScreen.routeName, arguments: {
      'id': id,
      'title': title,
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        return _selectCategory(context);
      },
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(
          title,
          //cấu hình font chữ theo theme
          style: Theme.of(context).primaryTextTheme.bodyLarge,
        ),
        decoration: BoxDecoration(
          //hiện thị độ màu dốc
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          //bo viền tròn
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
