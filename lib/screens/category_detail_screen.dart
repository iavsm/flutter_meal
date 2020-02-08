import 'package:flutter/material.dart';
import 'package:flutter_meal_app/dummy-data.dart';
import 'package:flutter_meal_app/model/meal.dart';
import 'package:flutter_meal_app/widgets/meal_item.dart';

class CategoryDetailScreen extends StatefulWidget {

  @override
  _CategoryDetailScreenState createState() => _CategoryDetailScreenState();
}

class _CategoryDetailScreenState extends State<CategoryDetailScreen> {
   String categoryId;
   String categoryTitle;
   List<Meal> categoryMeals;
   bool isInitialize = false;

   void removeItem(String id){
     setState(() {
       categoryMeals.removeWhere((meal) => meal.id == id);
     });
   }

   @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

    if (!isInitialize) {
      final route = ModalRoute
          .of(context)
          .settings
          .arguments as Map<String, String>;
      categoryId = route["id"];
      categoryTitle = route["title"];
      categoryMeals = DUMMY_MEALS.where((meal) {
        return meal.categories.contains(categoryId);
      }).toList();
      isInitialize = true;
    }
  }

  @override
  Widget build(BuildContext context) {


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
                affordability: categoryMeals[index].affordability,
                removeItem: removeItem);
          }, itemCount: categoryMeals.length,),
        ));
  }
}
