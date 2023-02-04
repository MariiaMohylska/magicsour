import 'package:flutter/material.dart';
import 'package:magicsour/ui_kit/common/app_colors.dart';

class MagicButton extends StatelessWidget{
  final String title;
  final Function() onPressed;
  
  const MagicButton({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 6.0),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: AppColors.mainGradient,
                begin: Alignment.topCenter),
          ),
          width: 150.0,
          child: Text(title, style: const TextStyle(fontSize: 22), textAlign: TextAlign.center,),
        ),
      ),
    );
  }
  
}