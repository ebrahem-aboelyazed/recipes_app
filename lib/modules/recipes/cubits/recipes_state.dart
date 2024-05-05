part of 'recipes_cubit.dart';

@freezed
class RecipesState with _$RecipesState {
  const factory RecipesState.initial() = RecipesInitial;

  const factory RecipesState.loading() = RecipesLoading;

  const factory RecipesState.loaded(List<Recipe> recipes) = RecipesLoaded;

  const factory RecipesState.searching(String? search) = RecipesSearching;

  const factory RecipesState.failure(Failure failure) = RecipesFailure;
}
