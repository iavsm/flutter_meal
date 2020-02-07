import 'package:flutter/material.dart';
import 'package:flutter_meal_app/screens/categories_screen.dart';
import 'package:flutter_meal_app/screens/favorite_screen.dart';

class BottomTapBar extends StatefulWidget {
  @override
  _BottomTapBarState createState() => _BottomTapBarState();
}

class _BottomTapBarState extends State<BottomTapBar> {

  int _selectedCurrentPAgeIndex = 0;
  final List<Map<String, Object>> _pages = [
    {
      'page': CategoriesScreen(),
      'title': 'Categories',
    },
    {
      'page': FavoriteScreens(),
      'title': 'Your Favorite',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meal APp"),
      ),
      body: _pages[_selectedCurrentPAgeIndex]["page"],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.amberAccent,
        selectedItemColor: Colors.white,
        currentIndex: _selectedCurrentPAgeIndex,


          items:[
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.category),
              title: Text("Category"),
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.favorite),
              title: Text("Favorite"),
            ),


          ] ),

    );
  }



  void _selectPage(int value) {
    setState(() {
      _selectedCurrentPAgeIndex = value;
    });
  }


}
