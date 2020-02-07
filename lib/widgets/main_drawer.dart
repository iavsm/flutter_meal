import 'package:flutter/material.dart';
import 'package:flutter_meal_app/screens/filter_screen.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 150,
            width: double.infinity,
            color: Colors.amberAccent,
          ),
          Text("Navigate To",
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
          ),),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(Icons.category),
            title: Text("Category",),
            onTap: (){
              Navigator.of(context).pushNamed("/");
            },
          ),
          ListTile(
            leading: Icon(Icons.filter),
            title: Text("Filter",),
            onTap: (){
              Navigator.of(context).pushNamed(FilterScreens.routeName);
            },
          ),
        ],
      ),
    );
  }
}
