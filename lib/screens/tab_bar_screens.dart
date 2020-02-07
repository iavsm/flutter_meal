import 'package:flutter/material.dart';
import 'package:flutter_meal_app/screens/categories_screen.dart';
import 'package:flutter_meal_app/screens/category_detail_screen.dart';
import 'package:flutter_meal_app/screens/favorite_screen.dart';


class TabsBarScreens extends StatefulWidget {
  @override
  _TabsBarScreensState createState() => _TabsBarScreensState();
}

class _TabsBarScreensState extends State<TabsBarScreens> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child: Scaffold(
      appBar: AppBar(title: Text("Tabs"),
      bottom: TabBar(
        tabs: <Widget>[
          Tab(icon: Icon(Icons.category),
          text: "Category",),
          Tab(icon: Icon(Icons.favorite),
            text: "Favorite",),
        ],
      ),),
      body: TabBarView(
        children: <Widget>[
          CategoriesScreen(),
          FavoriteScreens(),
        ],
      ),
    ));
  }
}


