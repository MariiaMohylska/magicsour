import 'package:flutter/material.dart';
import 'package:magicsour/s_localization.dart';
import 'package:magicsour/ui_kit/common/colorful_container.dart';

class SearchTabs extends StatelessWidget {
  final bool _isGenerating;
  final Function() generatingOnPressed;
  final Function() searchOnPressed;

  const SearchTabs(
      {super.key,
      required this.generatingOnPressed,
      required this.searchOnPressed,
      bool isGenerating = false})
      : _isGenerating = isGenerating;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: searchOnPressed,
            child: _tabButton(context, S.instance!.search, !_isGenerating),
          ),
          GestureDetector(
            onTap: generatingOnPressed,
            child: _tabButton(context, S.instance!.generate, _isGenerating),
          )
        ],
      ),
    );
  }

  Widget _tabButton(BuildContext context, String title, bool selected) {
    return selected
        ? ColorfulContainer(
            width: MediaQuery.of(context).size.width / 3 + 10,
            padding: const EdgeInsets.symmetric(vertical: 8),
            borderRadius: 30.0,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18),
            ),
          )
        : Text(
            title,
            style: const TextStyle(fontSize: 18),
          );
  }
}
