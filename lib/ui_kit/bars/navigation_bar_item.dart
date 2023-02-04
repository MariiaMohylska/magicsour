import 'package:flutter/material.dart';
import 'package:magicsour/models/navigation/navigation_bar_item_view_model.dart';
import 'package:magicsour/utils/mappers/navigation_mapper.dart';
import 'package:magicsour/ui_kit/common/app_colors.dart';

class NavigationBarItem extends StatelessWidget {
  final NavigationBarItemViewModel viewModel;
  final Function(int) onTap;

  const NavigationBarItem({super.key, required this.viewModel, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () => onTap(viewModel.id),
          icon: Icon(
            viewModel.getNavigationIcon() ?? Icons.cake_outlined,
            size: 28,
            color: _getColor(),
          ),
        ),
        if (viewModel.needText)
          Text(
            viewModel.getNavigationTitle(context),
            style: TextStyle(
              color: _getColor(),
              fontSize: 12,
            ),
          ),
      ],
    );
  }

  Color _getColor() =>
      viewModel.selected ? AppColors.brown : AppColors.brown.withOpacity(0.7);
}
