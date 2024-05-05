import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:recipes_app/common/common.dart';
import 'package:recipes_app/core/core.dart';
import 'package:recipes_app/l10n/l10n.dart';
import 'package:recipes_app/modules/favorites/favorites.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FavoritesCubit>(
      create: (context) {
        return FavoritesCubit(
          favoritesStorage: getIt.get<FavoritesStorage>(),
        );
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            context.l10n.favorites,
            style: const TextStyle(color: Colors.white),
          ),
        ),
        body: Builder(
          builder: (ctx) {
            final cubit = ctx.read<FavoritesCubit>();
            return Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 12,
              ),
              child: ValueListenableBuilder<Box<String>>(
                valueListenable: cubit.getFavoritesStream(),
                builder: (context, value, child) {
                  final recipes = cubit.getFavorites();
                  if (recipes.isEmpty) {
                    return const Center(child: EmptyView());
                  }
                  return FavoritesListView(recipes: recipes);
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
