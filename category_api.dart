import 'dart:convert';
import 'category.dart';
import 'package:http/http.dart' as http;

class CategoryApi {
  static Future<List<Category>> getCategory() async {
    var uri = Uri.https('https://yummly2.p.rapidapi.com/categories/list');

    final response = await http.get(uri, headers: {
      "x-rapidapi-key": "395ad62b8emshdf8bfc7cd09b9b8p1eb053jsne908289e3ad2",
      "x-rapidapi-host": "yummly2.p.rapidapi.com",
      "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);
    List temp = [];

    for (var i in data['browse-categories']) {
      temp.add(i['displayName']['iconImage']['categoryImage']);
    }

    return Category.recipesFromSnapshot(temp);
  }
}
