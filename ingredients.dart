import 'package:flutter/material.dart';

class Ingredients extends StatelessWidget {
  const Ingredients();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      width: 200,
      height: 100,
      child: Stack(
        children: [
          Positioned(
            top: 20,
            left: 10,
            child: Text('image'),
          ),
          Positioned(
            top: 10,
            left: 60,
            child: Text('name'),
          ),
          Positioned(
            top: 30,
            left: 60,
            child: Text('how much'),
          ),
        ],
      ),
    );
  }
}
