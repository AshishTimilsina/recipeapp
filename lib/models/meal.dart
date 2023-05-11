class Meal {
  final String id;
  final String name;
  final List<String> ingredients;
  final List<String> steps;
  final String imageurl;
  final List<String> categories;
  final int duration;
  final String calorie;
  final double serving;
  final String price;
  Meal({
    required this.price,
    required this.calorie,
    required this.serving,
    required this.id,
    required this.name,
    required this.ingredients,
    required this.steps,
    required this.imageurl,
    required this.categories,
    required this.duration,
  });
}
