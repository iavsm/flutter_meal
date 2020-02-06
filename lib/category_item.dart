import 'package:flutter/material.dart';
import 'model/category.dart';


class CategoryItem extends StatelessWidget {

  final String title;
  final Color color;

  CategoryItem(this.title, this.color);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(title),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [color.withOpacity(0.7), color],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight),

      ),
    );
  }
}
