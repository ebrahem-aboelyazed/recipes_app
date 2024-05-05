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
              Hero(
                tag: recipe.image,
                child: CachedImage(
                  recipe.image,
                  radius: 8,
                  fit: BoxFit.contain,
                  height: 120,
                  width: 120,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            recipe.name,
                            maxLines: 1,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        FavoriteIcon(recipe: recipe),
                      ],
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
