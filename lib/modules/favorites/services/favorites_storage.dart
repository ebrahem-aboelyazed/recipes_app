import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:recipes_app/modules/recipes/recipes.dart';
import 'package:recipes_app/utils/utils.dart';

/// Manages storage of favorite items using a Hive box.
@LazySingleton()
class FavoritesStorage {
  /// The favorites box for storing favorite items.
  Box<String> get favoritesBox => Hive.box<String>(AppConstants.favorites);

  /// Returns a [ValueListenable] to listen for changes in the favorites box.
  ValueListenable<Box<String>> getFavoritesStream() {
    return favoritesBox.listenable();
  }

  /// Retrieves a list of favorite recipes from the favorites box.
  ///
  /// Returns a list of [Recipe] objects representing favorite recipes.
  List<Recipe> getFavorites() {
    final favorites = favoritesBox.values.toList();
    return favorites.map((e) {
      final json = jsonDecode(e) as Map<String, dynamic>;
      return Recipe.fromJson(json);
    }).toList();
  }

  /// Adds a recipe to the favorites box.
  ///
  /// [item] is the recipe to be added to favorites.
  Future<void> putToFavorites(Recipe item) async {
    try {
      final json = jsonEncode(item.toJson());
      await favoritesBox.put(item.id, json);
      await favoritesBox.flush();
    } catch (_) {}
  }

  /// Removes a recipe from the favorites box.
  ///
  /// [item] is the recipe to be removed from favorites.
  Future<void> removeFromFavorites(Recipe item) async {
    try {
      if (!favoritesBox.containsKey(item.id)) return;
      await favoritesBox.delete(item.id);
      await favoritesBox.flush();
    } catch (_) {}
  }

  /// Checks if an item with the given [id] exists in the favorites box.
  ///
  /// Returns `true` if the item exists, otherwise `false`.
  bool containsItem(String id) {
    return favoritesBox.containsKey(id);
  }

  /// Clears all items from the favorites box.
  Future<void> clearFavorites() async {
    if (favoritesBox.isNotEmpty) {
      await favoritesBox.clear();
      await favoritesBox.flush();
    }
  }
}
