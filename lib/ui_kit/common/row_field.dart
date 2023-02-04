import 'package:flutter/material.dart';
import 'frosted_glass.dart';

class RowField extends StatelessWidget {
  final String title;
  final Widget? preTitle;
  final Function() onPressed;
  final Widget? afterTitle;

  const RowField(
      {super.key,
      this.preTitle,
      required this.title,
      this.afterTitle,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: FrostedGlass(
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 8),
              child: Row(
                children: [
                  preTitle != null
                      ? Container(
                          margin: const EdgeInsets.only(right: 6.0),
                          child: preTitle)
                      : Container(),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(title, style: const TextStyle(fontSize: 18)),
                  ),
                ],
              ),
            ),
            afterTitle ?? Container(),
          ],
        ),
      ),
    );
  }
}
