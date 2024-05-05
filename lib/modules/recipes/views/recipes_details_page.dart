import 'package:flutter/material.dart';
import 'package:recipes_app/common/common.dart';
import 'package:recipes_app/l10n/l10n.dart';
import 'package:recipes_app/modules/recipes/recipes.dart';
import 'package:recipes_app/utils/utils.dart';

class RecipesDetailsPage extends StatelessWidget {
  const RecipesDetailsPage({required this.recipe, super.key});

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              elevation: 0,
              expandedHeight: context.heightPercentage(0.4),
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Hero(
                  tag: recipe.image,
                  child: CachedImage(
                    recipe.image,
                    radius: 0,
                    height: context.heightPercentage(0.4),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
                    Text(
                      recipe.name,
                      style: Styles.boldText.copyWith(
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      recipe.headline,
                      style: Styles.boldText.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(recipe.description),
                    const SizedBox(height: 16),
                    Text(
                      '${context.l10n.ingredients}:',
                      style: Styles.boldText.copyWith(
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 4),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: recipe.ingredients.length,
                      itemBuilder: (context, index) {
                        final ingredient = recipe.ingredients[index];
                        return Text(
                          '- $ingredient',
                          style: const TextStyle(fontSize: 14),
                        );
                      },
                    ),
                    const SizedBox(height: 16),
                    Text(
                      '${context.l10n.preparation_time}:',
                      style: Styles.boldText.copyWith(
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(recipe.time, style: const TextStyle(fontSize: 14)),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
