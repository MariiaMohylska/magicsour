import 'package:flutter/material.dart';
import 'package:magicsour/ui_kit/common/app_colors.dart';
import 'package:magicsour/ui_kit/common/frosted_glass.dart';

class NutritionContainer extends StatelessWidget {
  final double number;
  final String name;
  final String measurement;
  final double height;
  final double width;
  final double titleFontSize;
  final padding = const EdgeInsets.all(6.0);
  final borderRadius = 50.0;

  const NutritionContainer(
      {super.key,
      required this.number,
      required this.name,
      required this.measurement,
      this.width = 75.0,
      this.height = 140.0,
      this.titleFontSize = 12});

  @override
  Widget build(BuildContext context) {
    return FrostedGlass(
      height: height,
      width: width,
      borderRadius: borderRadius,
      padding: padding,
      child: _result(),
    );
  }

  Widget _result() {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(50.0),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: AppColors.mainGradient, begin: Alignment.topCenter),
            ),
            height: 60,
            width: 60,
            child: Center(
              child: Text(
                number.toString(),
                style: TextStyle(
                  color: Colors.brown.shade50,
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 13),
        Text(name,
            style: TextStyle(
              color: Colors.black,
              fontSize: titleFontSize,
              fontWeight: FontWeight.w500,
            )),
        const SizedBox(height: 6),
        Text(measurement,
            style: TextStyle(
              color: Colors.brown[700],
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ))
      ],
    );
  }
}
