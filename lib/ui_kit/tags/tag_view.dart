import 'package:flutter/material.dart';
import 'package:magicsour/models/selectable_model.dart';
import 'package:magicsour/s_localization.dart';
import 'package:magicsour/ui_kit/common/colorful_container.dart';
import 'package:magicsour/ui_kit/common/frosted_glass.dart';

class MagicSourTagView extends StatefulWidget {
  final List<SelectableModel> tags;
  final List<SelectableModel> _selectedTags = [];
  final int maxTagSelected;

  MagicSourTagView({
    required this.tags,
    required this.maxTagSelected,
    super.key,
  });

  List<SelectableModel> selectedTags() {
    return _selectedTags;
  }

  @override
  State createState() => _MagicSourTagViewState();
}

class _MagicSourTagViewState extends State<MagicSourTagView> {
  int selectedTagIndex = -1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FrostedGlass(
      padding: const EdgeInsets.only(left: 8.0, right: 8, bottom: 3),
      child: ExpansionTile(
        title: Text(
          S.instance!.selectTag,
          style: const TextStyle(fontSize: 18),
        ),
        children: [
          getTagView(),
        ],
      ),
    );
  }

  Widget getTagView() {
    return Wrap(
      alignment: WrapAlignment.center,
      children: buildTags(),
    );
  }

  List<Widget> buildTags() {
    List<Widget> tags = <Widget>[];
    for (int i = 0; i < widget.tags.length; i++) {
      tags.add(createTag(i, widget.tags[i]));
    }
    return tags;
  }

  Widget createTag(int index, SelectableModel tag) {
    return InkWell(
        onTap: () {
          if (!tag.isSelected &&
              (widget._selectedTags.length < widget.maxTagSelected)) {
            widget._selectedTags.add(tag);
            setState(() {
              tag.changeStateSelected();
            });
          } else if (tag.isSelected) {
            widget._selectedTags.remove(tag);
            setState(() {
              tag.changeStateSelected();
            });
          }
        },
        child: !tag.isSelected
            ? FrostedGlass(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                borderRadius: 30.0,
                child: Container(
                  padding: const EdgeInsets.all(2),
                  child: Text(
                    tag.model,
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
              )
            : ColorfulContainer(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                borderRadius: 30.0,
                child: Container(
                  padding: const EdgeInsets.all(2),
                  child: Text(
                    tag.model,
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
              ));
  }
}
