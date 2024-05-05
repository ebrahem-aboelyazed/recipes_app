import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:recipes_app/core/core.dart';
import 'package:recipes_app/modules/recipes/recipes.dart';

@LazySingleton(as: RecipesService)
class RecipesServiceImpl implements RecipesService {
  const RecipesServiceImpl(this._baseApi);

  final BaseApi _baseApi;

  @override
  Future<Either<Failure, List<Recipe>>> getRecipes() async {
    try {
      final response = await _baseApi.getData(
        EndPoints.recipes,
      );
      return response.fold(Left.new, (r) {
        final result = r.data as List<dynamic>;
        final castedData = List<Map<String, dynamic>>.from(result);
        return Right(castedData.map(Recipe.fromJson).toList());
      });
    } catch (e) {
      log('Request Failed ====>$e', error: e);
      return Left(Failure(message: e.toString()));
    }
  }
}
