import 'package:flutter/material.dart';
import 'package:magicsour/models/ingredient.dart';
import 'package:magicsour/models/product_type.dart';
import 'package:magicsour/models/selectable_model.dart';
import 'package:magicsour/utils/mappers/product_type_mapper.dart';

class RestrictedProductDialog extends StatefulWidget {
  final Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
      restrictedProducts;
  final Function()? onTap;

  const RestrictedProductDialog({super.key, required this.restrictedProducts, this.onTap});

  @override
  State<RestrictedProductDialog> createState() =>
      RestrictedProductDialogState();
}

class RestrictedProductDialogState extends State<RestrictedProductDialog> {
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
        GestureDetector(child: const Icon(Icons.done), onTap: () {
          if(widget.onTap != null) {
            widget.onTap!();
          }
          Navigator.of(context).pop();
        },)
      ],
    );
  }

  List<Widget> _getRestrictedList() {
    List<Widget> restrictedListByType = [];

    widget.restrictedProducts.forEach((key, value) {
      Widget typeList = Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(ProductTypeMapper.productTypeToString(key.model), style: const TextStyle(fontSize: 20),),
              Checkbox(
                  value: value.isAllSelected,
                  onChanged: (isSelected) {
                    setState(() {
                      key.isSelected = isSelected ?? false;
                      value.onSelectAllTapped(isSelected ?? false);
                    });
                  })
            ],
          ),
          ...value.map((e) => Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(e.model.name),
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
          ),
          const Divider(),
        ],
      );

      restrictedListByType.add(typeList);
    });

    return restrictedListByType;
  }
}
