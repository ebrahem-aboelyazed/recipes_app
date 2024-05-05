import 'package:flutter/material.dart';
import 'package:recipes_app/common/common.dart';
import 'package:recipes_app/modules/recipes/recipes.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({required this.recipe, super.key});

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute<dynamic>(
            builder: (context) {
              return RecipesDetailsPage(recipe: recipe);
            },
          ),
        );
      },
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.only(bottom: 16),
          decoration: const BoxDecoration(),
          child: Row(
            children: [
              SizedBox(
                height: 120,
                width: 120,
                child: AspectRatio(
                  aspectRatio: 1.8,
                  child: Hero(
                    tag: recipe.image,
                    child: CachedImage(
                      recipe.image,
                      radius: 8,
                      height: 120,
                      width: 120,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      recipe.name,
                      maxLines: 1,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      recipe.description,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
