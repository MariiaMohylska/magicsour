import 'package:flutter/cupertino.dart';
import 'package:magicsour/s_localization.dart';
import 'package:magicsour/ui_kit/common/app_colors.dart';
import 'package:magicsour/ui_kit/common/frosted_glass.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: FrostedGlass(
        padding: const EdgeInsets.all(16),
        child: Text(
          S.instance!.errorMessage,
          style: const TextStyle(fontSize: 24, color: AppColors.brown),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
