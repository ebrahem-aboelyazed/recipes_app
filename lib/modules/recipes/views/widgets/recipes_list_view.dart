import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app/modules/recipes/recipes.dart';

class RecipesListView extends StatelessWidget {
  const RecipesListView({required this.recipes, super.key});

  final List<Recipe> recipes;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RecipesCubit>();
    return RefreshIndicator(
      onRefresh: cubit.getRecipes,
      child: FadeInUp(
        child: ListView.builder(
          itemCount: recipes.length,
          itemBuilder: (context, index) {
            return RecipeCard(recipe: recipes[index]);
          },
        ),
      ),
    );
  }
}
