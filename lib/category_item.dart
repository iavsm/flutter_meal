import 'package:flutter/material.dart';
import 'package:flutter_meal_app/category_detail_screen.dart';

import 'model/category.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  CategoryItem(this.id, this.title, this.color);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        child: Text(
          title,
          style: Theme.of(context).textTheme.title,
        ),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [color.withOpacity(0.7), color],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(16)),
      ),
    );
  }

  selectCategory(BuildContext context) {
//    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
//      return CategoryDetailScreen(id,title);
//    }));

    Navigator.of(context)
        .pushNamed("category_meal", arguments: {"id": id, "title": title});
  }
}
