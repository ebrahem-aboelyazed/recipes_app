import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:recipes_app/core/core.dart';
import 'package:recipes_app/modules/recipes/recipes.dart';

class MockRecipesService extends Mock implements RecipesService {}

void main() {
  late RecipesCubit recipesCubit;
  late RecipesService recipesService;

  setUp(() {
    recipesService = MockRecipesService();
    recipesCubit = RecipesCubit(recipesService: recipesService);
  });

  tearDown(() {
    recipesCubit.close();
  });

  group('RecipesCubit', () {
    blocTest<RecipesCubit, RecipesState>(
      'emits [loading, loaded] when getRecipes succeeds',
      setUp: () {
        when(() {
          return recipesService.getRecipes();
        }).thenAnswer((_) async => const Right([]));
      },
      build: () => recipesCubit,
      act: (cubit) => cubit.getRecipes(),
      expect: () => [
        const RecipesState.loading(),
        const RecipesState.loaded([]),
      ],
    );

    blocTest<RecipesCubit, RecipesState>(
      'emits [loading, failure] when getRecipes fails',
      setUp: () {
        when(() {
          return recipesService.getRecipes();
        }).thenAnswer((_) async => const Left(Failure()));
      },
      build: () => recipesCubit,
      act: (cubit) => cubit.getRecipes(),
      expect: () => [const RecipesState.loading(), isA<RecipesFailure>()],
    );
  });
}
