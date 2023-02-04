import 'package:flutter/material.dart';

class TagContainer extends StatelessWidget {
  final String title;
  final double width;

  const TagContainer({super.key, required this.title, this.width = 100});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.brown[800]!.withOpacity(0.35),
          spreadRadius: 1,
          blurRadius: 25,
        )
      ]),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(50)),
        child: Container(
          color: Colors.white.withOpacity(0.15),
          width: width,
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            title,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
