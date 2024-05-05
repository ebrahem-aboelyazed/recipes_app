import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe.freezed.dart';
part 'recipe.g.dart';

@freezed
class Recipe with _$Recipe {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Recipe({
    @Default('') String id,
    @Default('') String fats,
    @Default('') String name,
    @Default('') String time,
    @Default('') String image,
    @Default([]) List<String> weeks,
    @Default('') String carbos,
    @Default('') String fibers,
    @Default(0) double rating,
    @Default('') String country,
    @Default(0) num ratings,
    @Default('') String calories,
    @Default('') String headline,
    @Default(<String>[]) List<String> keywords,
    @Default(<String>[]) List<String> products,
    @Default('') String proteins,
    @Default(0) int favorites,
    @Default(0) int difficulty,
    @Default('') String description,
    @Default(false) bool highlighted,
    @Default(<String>[]) List<String> ingredients,
    @Default([]) List<String> deliverableIngredients,
  }) = _Recipe;

  factory Recipe.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);
}
