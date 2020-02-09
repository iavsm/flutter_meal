import 'package:flutter/material.dart';

class FilterScreens extends StatefulWidget {

  static const routeName = "FilterScreens";

  @override
  _FilterScreensState createState() => _FilterScreensState();
}

class _FilterScreensState extends State<FilterScreens> {

  var _glutenFree = false;
  var _vegetarian = false;
  var _vegan = false;
  var _lactoseFree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filter"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Text("Filter mail"),
            SizedBox(height: 8,),
            Expanded(
              child: ListView(
                children: <Widget>[
                  buildSwitchtile(
                    "GlutenFree",
                    "Select meal that gluten free.",
                    _glutenFree,
                    (currentValue){
                      setState(() {
                        _glutenFree = currentValue;
                      });
                    },
                  ),
                  buildSwitchtile(
                    "Vegetarian",
                    "Select vegetarian meal.",
                    _vegetarian,
                        (currentValue){
                      setState(() {
                        _vegetarian = currentValue;
                      });
                    },
                  ),
                  buildSwitchtile(
                    "Vegan",
                    "Select vegan meal.",
                    _vegan,
                        (currentValue){
                      setState(() {
                        _vegan = currentValue;
                      });
                    },
                  ),
                  buildSwitchtile(
                    "LactoseFree",
                    "Select meal that lactoseFree free.",
                    _lactoseFree,
                        (currentValue){
                      setState(() {
                        _lactoseFree = currentValue;
                      });
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildSwitchtile(var title, var subtitle, var currentValue, Function updateValue) {

    return SwitchListTile(
      title: Text(title),
      value: currentValue,
      subtitle: Text(subtitle),
      onChanged: updateValue,
    );
  }
}
