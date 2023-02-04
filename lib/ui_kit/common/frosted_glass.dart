import 'dart:ui';
import 'package:flutter/material.dart';

class FrostedGlass extends StatelessWidget {
  final Widget child;
  final double? height;
  final double? width;
  final double borderRadius;
  final EdgeInsetsGeometry? padding;

  const FrostedGlass(
      {super.key,
      required this.child,
      this.width,
      this.height,
      this.borderRadius = 0.0,
      this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          blurRadius: 30,
          spreadRadius: 1,
          color: Colors.brown.withOpacity(0.05),
        ),
      ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 8.5,
            sigmaY: 8.5,
          ),
          child: Container(
            height: height,
            width: width,
            padding: padding,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.15),
                borderRadius: BorderRadius.circular(16.0),
                border: Border.all(
                  width: 1.5,
                  color: Colors.white.withOpacity(0.1),
                )),
            child: child,
          ),
        ),
      ),
    );
  }
}
