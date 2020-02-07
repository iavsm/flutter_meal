import 'package:flutter/material.dart';
import 'package:flutter_meal_app/category_item.dart';
import 'package:flutter_meal_app/dummy-data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Biryani"),
        ),
        body: GridView(
            padding: EdgeInsets.all(25),
            children: DUMMY_CATEGORIES
                .map((categoryData) =>
                    CategoryItem(categoryData.id, categoryData.title, categoryData.color))
                .toList(),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
          ),

    );
  }
}
