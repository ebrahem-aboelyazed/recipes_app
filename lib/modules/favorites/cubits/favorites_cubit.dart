import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:recipes_app/core/core.dart';
import 'package:recipes_app/modules/favorites/favorites.dart';
import 'package:recipes_app/modules/recipes/recipes.dart';

part 'favorites_cubit.freezed.dart';
part 'favorites_state.dart';

/// Manages favorite recipes using a [FavoritesStorage] instance.
class FavoritesCubit extends Cubit<FavoritesState> {
  /// Constructs a [FavoritesCubit] with the provided [favoritesStorage].
  FavoritesCubit({
    required this.favoritesStorage,
  }) : super(const FavoritesState.initial());

  /// The [FavoritesStorage] instance used to manage favorite recipes.
  final FavoritesStorage favoritesStorage;

  /// Returns a [ValueListenable] to listen for changes in the favorites box.
  ValueListenable<Box<String>> getFavoritesStream() {
    return favoritesStorage.getFavoritesStream();
  }

  /// Retrieves a list of favorite recipes.
  ///
  /// Returns a list of [Recipe] objects representing favorite recipes.
  List<Recipe> getFavorites() {
    return favoritesStorage.getFavorites();
  }

  /// Removes a recipe from the list of favorites.
  ///
  /// [item] is the recipe to be removed from favorites.
  Future<void> removeFromFavorites(Recipe item) async {
    await favoritesStorage.removeFromFavorites(item);
  }
}
