import 'package:flutter/material.dart';
import 'package:flutter_meal_app/categories_screen.dart';
import 'package:flutter_meal_app/category_detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.grey,
        canvasColor: Color.fromARGB(254, 2220, 220, 1),
        fontFamily: "Releway",
        textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(color: Color.fromARGB(50, 20, 20, 1)),
              body2: TextStyle(color: Color.fromARGB(50, 20, 20, 1)),
              title: TextStyle(
                fontFamily: "RobotoCondensed",
                fontSize: 24,
              ),
            ),
      ),
      home: CategoriesScreen(),
      routes: {
        "category_meal" : (context) => CategoryDetailScreen(),
      },
    );
  }
}
