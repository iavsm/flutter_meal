import 'package:flutter/material.dart';
import 'package:flutter_meal_app/dummy-data.dart';
import 'package:flutter_meal_app/model/meal.dart';


class MailDetailScreen extends StatelessWidget {

  static const routeName = "/MailDetailScreen";

  @override
  Widget build(BuildContext context) {

    final arguments = ModalRoute.of(context).settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere( (meal) => meal.id == arguments);
    return Scaffold(
      appBar: AppBar(
        title: Text("${selectedMeal.title}"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(selectedMeal.imageUrl,
              fit: BoxFit.cover,),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 4),
              child: Text("Ingredients",
              style: Theme.of(context).textTheme.body2),
            ),
            Container(
              height: 100,
              width: 200,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.circular(8),
              ),
              child: ListView.builder(itemBuilder: (context, index){
                return Text(" #${index+1} ${selectedMeal.ingredients[index]}");
              },
              itemCount: selectedMeal.ingredients.length,),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 4),
              child: Text("Steps",
                  style: Theme.of(context).textTheme.body2),
            ),
            Container(
              height: 100,
              width: 200,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(8),
              ),
              child: ListView.builder(itemBuilder: (context, index){
                return Text(" #${index+1} ${selectedMeal.steps[index]}");
              },
                itemCount: selectedMeal.steps.length,),
            )
          ],
        ),
      ),
    );
  }
}
