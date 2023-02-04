import 'package:flutter/material.dart';
import 'package:magicsour/models/navigation/navigation_bar_item_view_model.dart';
import 'package:magicsour/ui_kit/bars/navigation_bar_item.dart';
import 'package:magicsour/ui_kit/common/frosted_glass.dart';

class BottomNavBar extends StatefulWidget {
  final List<NavigationBarItemViewModel> items;
  final Function(int) onTap;

  const BottomNavBar({super.key, required this.items, required this.onTap});

  @override
  State<StatefulWidget> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return FrostedGlass(
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: _getNavigationItems(),
        ),
      ),
    );
  }

  List<Widget> _getNavigationItems() {
    return widget.items
      .map((viewModel) => NavigationBarItem(viewModel: viewModel, onTap: widget.onTap,))
      .toList();
  }
}
