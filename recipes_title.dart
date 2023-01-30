import 'package:flutter/material.dart';

class RecipeTitle extends StatelessWidget {
  RecipeTitle();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.grey,
        width: 300,
        height: 300,
        child: Stack(
          children: [
            Positioned(
              left: 130,
              top: 50,
              child: Text('image'),
            ),
            Positioned(
              left: 135,
              top: 100,
              child: Text('Title'),
            ),
            Positioned(
              left: 100,
              top: 150,
              child: Text('Description/Subtitle'),
            ),
          ],
        ),
      ),
    );
  }
}
