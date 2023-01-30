class Category {
  final String displayName;
  final String iconImage;
  final String categoryImage;
  final String tag;

  Category(
      {required this.displayName,
      required this.iconImage,
      required this.tag,
      required String categoryImage});

  factory Category.fromJson(dynamic json) {
    return Category(
        displayName: json['displayName'] as String,
        iconImage: json['displayName'] as String,
        categoryImage: json['categoryImage'] as String,
        tag: json['tag'] as String);
  }

  static List<Category> recipesFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return Category.fromJson(data);
    }).toList();
  }

  @override
  String toString() {
    return 'Recipe {name: $displayName, image: $iconImage, categoryImage: $categoryImage, tag: $tag}';
  }
}
