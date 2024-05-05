// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipeImpl _$$RecipeImplFromJson(Map<String, dynamic> json) => _$RecipeImpl(
      id: json['id'] as String? ?? '',
      fats: json['fats'] as String? ?? '',
      name: json['name'] as String? ?? '',
      time: json['time'] as String? ?? '',
      image: json['image'] as String? ?? '',
      weeks:
          (json['weeks'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      carbos: json['carbos'] as String? ?? '',
      fibers: json['fibers'] as String? ?? '',
      rating: (json['rating'] as num?)?.toDouble() ?? 0,
      country: json['country'] as String? ?? '',
      ratings: json['ratings'] as num? ?? 0,
      calories: json['calories'] as String? ?? '',
      headline: json['headline'] as String? ?? '',
      keywords: (json['keywords'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      proteins: json['proteins'] as String? ?? '',
      favorites: (json['favorites'] as num?)?.toInt() ?? 0,
      difficulty: (json['difficulty'] as num?)?.toInt() ?? 0,
      description: json['description'] as String? ?? '',
      highlighted: json['highlighted'] as bool? ?? false,
      ingredients: (json['ingredients'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      deliverableIngredients:
          (json['deliverable_ingredients'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const [],
    );

Map<String, dynamic> _$$RecipeImplToJson(_$RecipeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fats': instance.fats,
      'name': instance.name,
      'time': instance.time,
      'image': instance.image,
      'weeks': instance.weeks,
      'carbos': instance.carbos,
      'fibers': instance.fibers,
      'rating': instance.rating,
      'country': instance.country,
      'ratings': instance.ratings,
      'calories': instance.calories,
      'headline': instance.headline,
      'keywords': instance.keywords,
      'products': instance.products,
      'proteins': instance.proteins,
      'favorites': instance.favorites,
      'difficulty': instance.difficulty,
      'description': instance.description,
      'highlighted': instance.highlighted,
      'ingredients': instance.ingredients,
      'deliverable_ingredients': instance.deliverableIngredients,
    };
