import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:recipes_app/core/core.dart';
import 'package:recipes_app/modules/recipes/recipes.dart';

class MockBaseApi extends Mock implements BaseApi {}

void main() {
  late RecipesServiceImpl recipesService;
  late BaseApi baseApi;

  setUp(() {
    baseApi = MockBaseApi();
    recipesService = RecipesServiceImpl(baseApi);
  });

  group('RecipesServiceImpl', () {
    test('getRecipes should return Right List<Recipe> on success', () async {
      // Arrange
      final mockResponse = Response<dynamic>(
        data: [
          {'id': '1', 'name': 'Recipe 1'},
          {'id': '2', 'name': 'Recipe 2'},
        ],
        statusCode: 200,
        requestOptions: RequestOptions(),
      );
      when(() => baseApi.getData(EndPoints.recipes))
          .thenAnswer((_) async => Right(mockResponse));

      // Act
      final result = await recipesService.getRecipes();

      // Assert
      expect(result.isRight(), true);
      expect(result.getOrElse(() => throw Exception()), isA<List<Recipe>>());
    });

    test('getRecipes should return Left Failure on error', () async {
      // Arrange
      when(() => baseApi.getData(EndPoints.recipes)).thenThrow(Exception());

      // Act
      final result = await recipesService.getRecipes();

      // Assert
      expect(result.isLeft(), true);
    });
  });
}
