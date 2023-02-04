class SelectableModel<T> {
  final T model;
  bool isSelected;

  SelectableModel({required this.model, this.isSelected = false});

  void changeStateSelected(){
    isSelected = !isSelected;
  }
}

extension SelectableMapperFromList<T> on List<SelectableModel<T>> {
  List<T> fromSelectableList() =>
      map((selectableModel) => selectableModel.model).toList();

  bool get isAllSelected => every((model) => model.isSelected == true);

  void onSelectAllTapped(bool value) {
    for (var item in this) {
      item.isSelected = value;
    }
  }

  List<T> get getSelectedList {
    final selectedList = [...this];

    selectedList.removeWhere((selectableModel) => selectableModel.isSelected == false);

    return selectedList.map((selectableModel) => selectableModel.model).toList();
  }
}

extension ListMapperToSelectable<T> on List<T> {
  List<SelectableModel<T>> toSelectableList([bool withAllSelected = false]) =>
      map((model) => SelectableModel(model: model, isSelected: withAllSelected))
          .toList();
}

extension SelectableMapperFromObject<T> on T {
  SelectableModel<T> selectableModel([bool selected = false]) => SelectableModel(model: this, isSelected: selected);
}
