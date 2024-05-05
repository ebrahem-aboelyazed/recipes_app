import 'package:flutter/material.dart';
import 'package:recipes_app/modules/recipes/recipes.dart';

class FavoritesListView extends StatelessWidget {
  const FavoritesListView({required this.recipes, super.key});

  final List<Recipe> recipes;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: recipes.length,
      itemBuilder: (context, index) {
        return RecipeCard(recipe: recipes[index]);
      },
    );
  }
}
