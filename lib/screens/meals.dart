import 'package:flutter/material.dart';
import 'package:meal_app/screens/meals_details.dart';
import 'package:meal_app/widgets/meal_ite.dart';
import '../model/meal.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen(
      {super.key,
      this.title,
      required this.meals,});

  void onSelectMeal(BuildContext context, Meal meal) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => MealDetailScreen(
          meal: meal,
        ),
      ),
    );
  }

  final String? title;
  final List<Meal> meals;


  @override
  Widget build(BuildContext context) {
    Widget content = ListView.builder(
      itemCount: meals.length,
      itemBuilder: ((context, index) => MealItem(
            meal: meals[index],
            onSelectMeal: (meal) {
              onSelectMeal(context, meal);
            },
          )),
    );
    if (meals.isEmpty) {
      content = Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('oops nothing here'),
            const SizedBox(
              height: 16,
            ),
            Text(
              'try selecting other category',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onBackground),
            ),
          ],
        ),
      );
    }
    if (title == null) {
      return content;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: content,
    );
  }
}
