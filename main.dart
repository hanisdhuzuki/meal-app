import 'package:flutter/material.dart';
import 'package:recipe1/recipes_button.dart';
import 'package:recipe1/category_button.dart';
import 'package:recipe1/recipes_title.dart';
import 'package:recipe1/ingredients.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  Widget homePage = MyHomePage();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homePage,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  void changeToRecipe() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => recipePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text('Recipe (App Name)'),
            Text(
              'Find all your favourite recipes',
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Category'),
            ),
            padding: EdgeInsets.all(15),
          ),
          Container(
            height: 200,
            child: GridView.count(
              shrinkWrap: false,
              scrollDirection: Axis.horizontal,
              crossAxisCount: 1,
              crossAxisSpacing: 15, //between element
              mainAxisSpacing: 15,
              padding: EdgeInsets.all(30), //surrounding
              children: [
                CategoryButton(),
                CategoryButton(),
                CategoryButton(),
                CategoryButton(),
                CategoryButton(),
              ],
            ),
          ),
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Explore Recipes'),
            ),
            padding: EdgeInsets.all(15),
          ),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            crossAxisSpacing: 15, //between element
            mainAxisSpacing: 15,
            padding: EdgeInsets.all(30), //surrounding
            children: [
              RecipesButton(changeToRecipe),
              RecipesButton(changeToRecipe),
              RecipesButton(changeToRecipe),
              RecipesButton(changeToRecipe),
            ],
          ),
        ],
      ),
    );
  }
}

//from here is the second page
class recipePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Recipe Page')),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            RecipeTitle(),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Ingredients'),
                  ),
                  Ingredients(),
                  Ingredients(),
                  Ingredients(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
