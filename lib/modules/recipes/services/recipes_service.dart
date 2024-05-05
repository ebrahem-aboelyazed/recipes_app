import 'package:dartz/dartz.dart';
import 'package:recipes_app/core/core.dart';
import 'package:recipes_app/modules/recipes/recipes.dart';

abstract class RecipesService {
  Future<Either<Failure, List<Recipe>>> getRecipes();
}
