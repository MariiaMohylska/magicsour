import 'package:flutter/cupertino.dart';
import 'package:magicsour/models/nutrition.dart';
import 'package:magicsour/s_localization.dart';
import 'package:magicsour/ui_kit/common/nutrition_container.dart';

class NutritionRow extends StatelessWidget{
  final Nutrition nutrition;

  const NutritionRow({super.key, required this.nutrition});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        NutritionContainer(
          number: nutrition.calories,
          name: S.instance!.calories,
          measurement: '',
        ),
        NutritionContainer(
          number: nutrition.protein,
          name: S.instance!.protein,
          measurement: S.instance!.gram,
        ),
        NutritionContainer(
          number: nutrition.fat,
          name: S.instance!.fat,
          measurement: S.instance!.gram,
        ),
        NutritionContainer(
          number: nutrition.carbohydrates,
          name: S.instance!.carb,
          measurement: S.instance!.gram,
        ),
      ],
    );
  }

}