import 'package:flutter/material.dart';

class RecipesButton extends StatelessWidget {
  final Function changeToRecipe;

  RecipesButton(this.changeToRecipe);

  void changePage() {
    changeToRecipe();
  }
/// call recipe to explore recipes
List<Recipe> _recipes;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    getRecipes();
  }

  Future<void> getRecipes() async {
    _recipes = await RecipeApi.getRecipe();
    setState(() {
      _isLoading = false;
    });


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: changePage,
      child: Column(
        children: [
          Text('image of food'),
          Text('title of food'),
        ],
      ),
    );
  }
}
