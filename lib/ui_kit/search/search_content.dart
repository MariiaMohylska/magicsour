import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magicsour/blocs/account/account_bloc.dart';
import 'package:magicsour/blocs/bloc_factory.dart';
import 'package:magicsour/models/allergens.dart';
import 'package:magicsour/models/ingredient.dart';
import 'package:magicsour/models/product_type.dart';
import 'package:magicsour/models/search/search_details.dart';
import 'package:magicsour/models/search/search_parameters_model.dart';
import 'package:magicsour/models/selectable_model.dart';
import 'package:magicsour/models/tag.dart';
import 'package:magicsour/s_localization.dart';
import 'package:magicsour/ui_kit/common/frosted_glass.dart';
import 'package:magicsour/ui_kit/common/magic_button.dart';
import 'package:magicsour/ui_kit/common/row_field.dart';
import 'package:magicsour/ui_kit/dialogs/allergens_dialog.dart';
import 'package:magicsour/ui_kit/dialogs/restricted_product_dialog.dart';
import 'package:magicsour/ui_kit/tags/tag_view.dart';
import 'package:magicsour/utils/mappers/tag_mapper.dart';
import 'package:magicsour/utils/utils.dart';
import 'package:magicsour/blocs/search/search_bloc.dart';

class SearchContent extends StatefulWidget {
  final bool isGenerating;
  final Function(SearchDetailsModel) onSearch;
  final SearchBloc searchBloc;
  final AccountBloc accountBloc = BlocFactory.accountBloc;

  SearchContent({
    super.key,
    required this.onSearch,
    required this.searchBloc,
    this.isGenerating = false,
  });

  @override
  State<SearchContent> createState() => SearchContentState();
}

class SearchContentState extends State<SearchContent> {
  Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
  restrictedProducts = {};
  List<SelectableModel<Allergens>> allergens = [];
  bool notUseProfileSettings = false;
  double? cookingTime;
  double? calories;
  MagicSourTagView? tagsWidget;

  @override
  Widget build(BuildContext context) {
    tagsWidget ??= getTagsWidget(context);

    return BlocBuilder(
        bloc: widget.accountBloc,
        builder: (context, accountState) {
          return BlocBuilder(
              bloc: widget.searchBloc,
              builder: (context, searchState) {
                final searchParameters =
                _getSearchParameters(searchState as SearchState);

                restrictedProducts = searchParameters.restrictedProducts;
                allergens = searchParameters.allergensList.toSelectableList();
                cookingTime ??= searchParameters.defaultCookingTime;
                calories ??= searchParameters.defaultCalories;

                final nameController = TextEditingController();

                return Column(
                  children: [
                    if(!widget.isGenerating)
                      _nameSearchField(nameController),
                    tagsWidget!,
                    _cookingTimeSlider(searchParameters),
                    _allergensDialog(),
                    _restrictedProductsDialog(),
                    if (accountState is AccountLoggedInState)
                      _useProfileSettingsCheckbox(),
                    _caloriesSlider(searchParameters),
                    const SizedBox(
                      height: 10,
                    ),
                    _searchButton(nameController, tagsWidget!),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                );
              });
        });
  }

  SearchParametersModel _getSearchParameters(SearchState state) {
    if (state is SearchSearchState) {
      return SearchParametersModel(
        minCookingTime: state.searchParametersModel.minCookingTime,
        defaultCookingTime: state.searchParametersModel.defaultCookingTime,
        maxCookingTime: state.searchParametersModel.maxCookingTime,
        minCalories: state.searchParametersModel.minCalories,
        defaultCalories: state.searchParametersModel.defaultCalories,
        maxCalories: state.searchParametersModel.maxCalories,
        allergensList: state.searchParametersModel.allergensList,
        restrictedProducts: state.searchParametersModel.restrictedProducts,
      );
    } else if (state is SearchGenerateState) {
      return SearchParametersModel(
        minCookingTime: state.searchParametersModel.minCookingTime,
        defaultCookingTime: state.searchParametersModel.defaultCookingTime,
        maxCookingTime: state.searchParametersModel.maxCookingTime,
        minCalories: state.searchParametersModel.minCalories,
        defaultCalories: state.searchParametersModel.defaultCalories,
        maxCalories: state.searchParametersModel.maxCalories,
        allergensList: state.searchParametersModel.allergensList,
        restrictedProducts: state.searchParametersModel.restrictedProducts,
      );
    } else {
      return SearchParametersModel(
        minCookingTime: 0,
        defaultCookingTime: 4800,
        maxCookingTime: 5000,
        minCalories: 0,
        defaultCalories: 320,
        maxCalories: 5000,
        allergensList: [],
        restrictedProducts: {},
      );
    }
  }

  MagicSourTagView getTagsWidget(BuildContext context) {
    List<Tag> tagTypes = Tag.values.toList();
    tagTypes.remove(Tag.unknown);
    final tags = tagTypes
        .map((tag) => TagMapper.tagToString(tag))
        .toList()
        .toSelectableList();

    return MagicSourTagView(
      tags: tags,
      maxTagSelected: widget.isGenerating ? 3 : 5,
    );
  }

  Widget _searchButton(TextEditingController nameController,
      MagicSourTagView tagsWidget) {
    return MagicButton(
      title: widget.isGenerating ? S.instance!.generate : S.instance!.search,
      onPressed: () {
        widget.onSearch(SearchDetailsModel(
            name: nameController.text,
            calories: calories!.toDouble(),
            time: cookingTime!.toDouble(),
            allergens: allergens.getSelectedList,
            restrictedProducts: restrictedProducts,
            tags: tagsWidget
                .selectedTags()
                .map((tag) => TagMapper.tagFromString(tag.model))
                .toList(),
            usePersonal: !notUseProfileSettings,
            isGenerate: widget.isGenerating));
      },
    );
  }

  Widget _caloriesSlider(SearchParametersModel searchParameters) {
    return FrostedGlass(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
      child: ExpansionTile(
        title: Text(S.instance!.maxNumberOfCaloriesShort),
        subtitle: Text(
          '${calories!.toInt()} ${S.instance!.calories}',
          style: const TextStyle(fontSize: 12, color: Colors.brown),
        ),
        children: [
          Slider(
            max: searchParameters.maxCalories,
            min: searchParameters.minCalories,
            value: calories!.toDouble(),
            onChanged: (value) {
              setState(() {
                calories = value.toDouble();
              });
            },
          )
        ],
      ),
    );
  }

  Widget _cookingTimeSlider(SearchParametersModel searchParameters) {
    return FrostedGlass(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
      child: ExpansionTile(
        title: Text(S.instance!.cookingTime),
        subtitle: Utils.formatTime(Duration(seconds: cookingTime!.toInt())),
        children: [
          Slider(
            max: searchParameters.maxCookingTime,
            min: searchParameters.minCookingTime,
            value: cookingTime!.toDouble(),
            onChanged: (value) {
              setState(() {
                cookingTime = value;
              });
            },
          )
        ],
      ),
    );
  }

  Widget _nameSearchField(TextEditingController nameController) {
    return FrostedGlass(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.only(right: 8.0, left: 8.0, bottom: 6.0),
        child: TextFormField(
          controller: nameController,
          decoration: InputDecoration(labelText: S.instance!.dishName),
        ),
      ),
    );
  }

  Widget _allergensDialog() {
    return RowField(
      title: S.instance!.allergens,
      afterTitle: const Icon(Icons.add),
      onPressed: () =>
          showDialog(
              context: context,
              builder: (context) {
                return AllergensDialog(
                  allergens: allergens,
                );
              }),
    );
  }

  Widget _restrictedProductsDialog() {
    return RowField(
      title: S.instance!.restrictedProducts,
      afterTitle: const Icon(Icons.add),
      onPressed: () =>
          showDialog(
              context: context,
              builder: (context) {
                return RestrictedProductDialog(
                  restrictedProducts: restrictedProducts,
                );
              }),
    );
  }

  Widget _useProfileSettingsCheckbox(){
    return FrostedGlass(
      padding: const EdgeInsets.symmetric(
          horizontal: 8.0, vertical: 4),
      child: CheckboxListTile(
        title: Text(
          S.instance!.ignoreProfileSettings,
          style: const TextStyle(fontSize: 18),
        ),
        value: notUseProfileSettings,
        onChanged: (value) {
          setState(() {
            notUseProfileSettings = value ?? false;
          });
        },
      ),
    );
  }
}
