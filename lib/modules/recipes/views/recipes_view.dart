import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app/common/common.dart';
import 'package:recipes_app/l10n/l10n.dart';
import 'package:recipes_app/modules/recipes/recipes.dart';

class RecipesView extends StatefulWidget {
  const RecipesView({super.key});

  @override
  State<RecipesView> createState() => _RecipesViewState();
}

class _RecipesViewState extends State<RecipesView>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
    context.read<RecipesCubit>().getRecipes();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.l10n.recipes,
          style: const TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 12,
        ),
        child: BlocBuilder<RecipesCubit, RecipesState>(
          buildWhen: (previous, current) {
            return current is RecipesLoading ||
                current is RecipesLoaded ||
                current is RecipesFailure;
          },
          builder: (context, state) {
            return state.maybeWhen(
              loading: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              failure: (failure) {
                return ErrorView(message: failure.message);
              },
              orElse: () {
                final recipes = (state as RecipesLoaded).recipes;
                if (recipes.isEmpty) {
                  return const Center(child: EmptyView());
                }
                return RecipesListView(recipes: recipes);
              },
            );
          },
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
