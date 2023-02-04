class Nutrition {
  double calories;
  double protein;
  double fat;
  double carbohydrates;

  Nutrition({
    required this.calories,
    required this.protein,
    required this.fat,
    required this.carbohydrates,
  });

  Nutrition.fromJson(Map snapshot)
      : calories = double.parse((snapshot['calories'] ?? '0').toString()),
        protein = double.parse((snapshot['protein'] ?? '0').toString()),
        fat = double.parse((snapshot['fat'] ?? '0').toString()),
        carbohydrates = double.parse((snapshot['carbohydrates'] ?? '0').toString());

  Map toJson() => {
        "calories": calories,
        "protein": protein,
        "fat": fat,
        "carbohydrates": carbohydrates
      };
}
