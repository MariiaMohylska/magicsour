import 'package:magicsour/models/navigation_item_type.dart';

class NavigationBarItemViewModel {
  final int id;
  final NavigationItemType type;
  bool selected;
  bool needText;

  NavigationBarItemViewModel({
    required this.id,
    required this.type,
    this.selected = false,
    this.needText = true,
  });

  void changeSelectedStatus() => selected = !selected;
}
