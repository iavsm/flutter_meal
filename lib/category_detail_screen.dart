import 'package:flutter/material.dart';

class CategoryDetailScreen extends StatelessWidget {

   String categoryId;
   String categoryTitle;
//
//  CategoryDetailScreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {

    final route = ModalRoute.of(context).settings.arguments as Map<String, String>;
    categoryId = route["id"];
    categoryTitle = route["title"];

    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle),
        ) ,
        body: Container());
  }
}
