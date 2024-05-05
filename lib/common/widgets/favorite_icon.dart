import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:recipes_app/core/core.dart';
import 'package:recipes_app/modules/favorites/favorites.dart';
import 'package:recipes_app/modules/recipes/recipes.dart';

class FavoriteIcon extends StatelessWidget {
  const FavoriteIcon({required this.recipe, super.key});

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    final favoritesStorage = getIt.get<FavoritesStorage>();
    return ValueListenableBuilder<Box<String>>(
      valueListenable: favoritesStorage.getFavoritesStream(),
      builder: (context, value, child) {
        final containsItem = favoritesStorage.containsItem(recipe.id);
        return IconButton(
          onPressed: () async {
            if (containsItem) {
              await favoritesStorage.removeFromFavorites(recipe);
            } else {
              await favoritesStorage.putToFavorites(recipe);
            }
          },
          iconSize: 30,
          color: containsItem ? Colors.red : null,
          icon: containsItem
              ? const Icon(Icons.favorite)
              : const Icon(Icons.favorite_outline),
        );
      },
    );
  }
}
