import 'package:flutter/material.dart';
import '../components/meal_item.dart';
import '../models/meal.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;
  const FavoriteScreen({
    Key? key,
    required this.favoriteMeals,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Center(
        child: Text("Nenhuma refeição marcada como favorita."),
      );
    } else {
      return ListView.builder(
          itemCount: favoriteMeals.length,
          itemBuilder: (ctx, index) {
            return MealItem(
              meal: favoriteMeals[index],
            );
          });
    }
  }
}