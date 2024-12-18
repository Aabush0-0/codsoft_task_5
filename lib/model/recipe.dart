class Recipe {
  final String name;
  final String image;
  final bool tags;
  final int index;
  final List ingredients;
  final String calories;
  final String cookingTime;
  final String servings;
  final String description;
  final String price;

  Recipe({
    required this.name,
    required this.image,
    required this.tags,
    required this.index,
    required this.ingredients,
    required this.cookingTime,
    required this.servings,
    required this.description,
    required this.calories,
    required this.price,
  });
}
