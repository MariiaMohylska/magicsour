import 'package:flutter/material.dart';
import 'package:magicsour/models/navigation/navigation_bar_item_view_model.dart';
import 'package:magicsour/ui_kit/bars/navigation_bar_item.dart';
import 'package:magicsour/ui_kit/common/app_colors.dart';
import 'package:magicsour/ui_kit/common/frosted_glass.dart';

class TopBar extends StatelessWidget {
  final List<NavigationBarItemViewModel>? iconViewModel;
  final String title;
  final Function(int) onTap;

  const TopBar(
      {super.key,
      required this.title,
      required this.iconViewModel,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return FrostedGlass(
      height: 100.0,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(right: 12.0, left: 12.0, bottom: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 6.0),
              child: Text(
                title,
                style: const TextStyle(fontSize: 26, color: AppColors.brown),
              ),
            ),
            if (iconViewModel != null)
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: _getNavigationItems(iconViewModel!),
              ),
          ],
        ),
      ),
    );
  }

  List<Widget> _getNavigationItems(
      List<NavigationBarItemViewModel> viewModels) {
    return viewModels
        .map((viewModel) => NavigationBarItem(
              viewModel: viewModel,
              onTap: onTap,
            ))
        .toList();
  }
}
