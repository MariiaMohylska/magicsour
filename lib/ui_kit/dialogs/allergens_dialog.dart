import 'package:flutter/material.dart';
import 'package:magicsour/models/allergens.dart';
import 'package:magicsour/models/selectable_model.dart';
import 'package:magicsour/utils/mappers/allergens_mapper.dart';

class AllergensDialog extends StatefulWidget {
  final List<SelectableModel<Allergens>> allergens;
  final Function()? onTap;

  const AllergensDialog({super.key, required this.allergens, this.onTap});

  @override
  State<AllergensDialog> createState() => AllergensDialogState();
}

class AllergensDialogState extends State<AllergensDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.brown.shade100,
      contentPadding: const EdgeInsets.all(18),
      content: SizedBox(
        width: 550,
        child: SingleChildScrollView(
          child: Column(
            children: [
              ..._getRestrictedList(),
            ],
          ),
        ),
      ),
      actions: [
        GestureDetector(
          child: const Icon(Icons.done),
          onTap: () {
            if(widget.onTap != null) {
              widget.onTap!();
            }
            Navigator.of(context).pop();
          },
        )
      ],
    );
  }

  List<Widget> _getRestrictedList() => widget.allergens
      .map(
        (e) => Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(AllergensMapper.allergensToString(e.model)),
              Checkbox(
                value: e.isSelected,
                onChanged: (isSelected) => setState(
                  () {
                    e.isSelected = isSelected ?? false;
                  },
                ),
              )
            ],
          ),
        ),
      )
      .toList();
}
