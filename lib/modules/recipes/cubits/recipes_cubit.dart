import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipes_app/core/core.dart';
import 'package:recipes_app/modules/recipes/recipes.dart';

part 'recipes_cubit.freezed.dart';
part 'recipes_state.dart';

class RecipesCubit extends Cubit<RecipesState> {
  RecipesCubit({
    required this.recipesService,
  }) : super(const RecipesState.initial());

  final RecipesService recipesService;

  Future<void> getRecipes() async {
    emit(const RecipesState.loading());
    final response = await recipesService.getRecipes();
    response.fold(
      (failure) => emit(RecipesState.failure(failure)),
      (articles) => emit(RecipesState.loaded(articles)),
    );
  }
}
