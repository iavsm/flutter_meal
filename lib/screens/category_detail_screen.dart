import 'package:flutter/material.dart';
import 'package:flutter_meal_app/dummy-data.dart';
import 'package:flutter_meal_app/widgets/meal_item.dart';

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
    final categoryMeals = DUMMY_MEALS.where( (meal){
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle),
        ) ,
        body: Container(
          child: ListView.builder(itemBuilder: (context, index) {
            return MealItem(
                id: categoryMeals[index].id,
                title: categoryMeals[index].title,
                imageUrl: categoryMeals[index].imageUrl,
                duration: categoryMeals[index].duration,
                complexity: categoryMeals[index].complexity,
                affordability: categoryMeals[index].affordability);
          }, itemCount: categoryMeals.length,),
        ));
  }
}
