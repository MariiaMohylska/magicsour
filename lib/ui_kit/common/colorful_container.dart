import 'package:flutter/material.dart';
import 'package:magicsour/ui_kit/common/app_colors.dart';

class ColorfulContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final double borderRadius;
  final EdgeInsets padding;
  final Widget child;

  const ColorfulContainer(
      {super.key,
      required this.child,
      this.height,
      this.width,
      this.padding = const EdgeInsets.all(0.0),
      this.borderRadius = 0.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          blurRadius: 30,
          spreadRadius: 1,
          color: Colors.brown[800]!.withOpacity(0.15),
        ),
      ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(0.3),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                  colors: AppColors.mainGradient,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
              // color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(borderRadius),
              border: Border.all(
                width: 1.5,
                color: Colors.white.withOpacity(0.1),
              )),
          child: Padding(
            padding: padding,
            child: child,
          ),
        ),
      ),
    );
  }
}
