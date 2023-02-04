import 'package:flutter/material.dart';
import 'package:magicsour/ui_kit/common/frosted_glass.dart';

class RecipeCardMiniLoading extends StatelessWidget {
  const RecipeCardMiniLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      alignment: Alignment.center,
      child: Stack(
        children: [
          FrostedGlass(
            height: 200.0,
            width: 500.0,
            borderRadius: 25.0,
            padding: const EdgeInsets.only(top: 30.0, left: 30.0),
            child: Container(),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100.0),
              child: SizedBox(
                height: 105,
                width: 105,
                child: Container(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
