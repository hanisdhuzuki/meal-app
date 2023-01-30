import 'package:flutter/material.dart';
import 'package:flutter_application_1/category_api.dart';
import 'package:flutter_application_1/category.dart';

class CategoryButton extends StatelessWidget {
  const CategoryButton();

  /// call Category
  List<Category> _category;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    getRecipes();
  }

  Future<void> getCategory() async {
    _category = await CategoryApi.getCategory();
    setState(() {
      _isLoading = false;
    });

    @override
    Widget build(BuildContext context) {
      return ElevatedButton(
        onPressed: null,
        child: Container(
          width: 300,
          height: 200,
          child: Stack(
            children: [
              Positioned(
                top: 20,
                left: 5,
                child: Text('image'),
              ),
              Positioned(
                top: 20,
                left: 50,
                child: Text('Title'),
              ),
              Positioned(
                top: 40,
                left: 5,
                child: Text('Description'),
              ),
            ],
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
