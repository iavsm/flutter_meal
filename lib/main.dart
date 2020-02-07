import 'package:flutter/material.dart';
import 'package:flutter_meal_app/screens/bottom_tap_bar_screen.dart';
import 'package:flutter_meal_app/screens/categories_screen.dart';
import 'package:flutter_meal_app/screens/category_detail_screen.dart';
import 'package:flutter_meal_app/screens/mail_detail_screen.dart';
import 'package:flutter_meal_app/screens/tab_bar_screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.grey,
        canvasColor: Color.fromRGBO(230, 230, 230, 1),
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
      home: BottomTapBar(),
      routes: {
        "category_meal" : (context) => CategoryDetailScreen(),
        MailDetailScreen.routeName : (context) => MailDetailScreen(),
      },
    );
  }
}
