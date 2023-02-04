import 'package:magicsour/models/navigation/navigation_bar_item_view_model.dart';
import 'package:magicsour/models/navigation_item_type.dart';

class NavigationRepository {
  late Map<String, List<NavigationBarItemViewModel>> _navigationBarItems;

  NavigationRepository() {
    _init();
  }

  void _init() {
    _setUpBottomBarItems();
  }

  Map<String, List<NavigationBarItemViewModel>> get navigationBarItems =>
      _navigationBarItems;

  void _setUpBottomBarItems() {
    _navigationBarItems = {
      'bottom': [
        NavigationBarItemViewModel(
          id: 1,
          type: NavigationItemType.home,
          selected: true,
        ),
        NavigationBarItemViewModel(
          id: 2,
          type: NavigationItemType.search,
        ),
        NavigationBarItemViewModel(
          id: 3,
          type: NavigationItemType.favorites,
        ),
        NavigationBarItemViewModel(
          id: 4,
          type: NavigationItemType.account,
        ),
      ],
      'top': [
        NavigationBarItemViewModel(
            id: 5,
            type: NavigationItemType.shoppingList,
            needText: false),
      ],
    };
  }

  NavigationItemType updateSelectedTab(int id) {
    _setAllNonSelected();

    NavigationItemType pageTitle = NavigationItemType.home;
      int selectedItem = _navigationBarItems['bottom']?.indexWhere((element) => element.id == id) ?? -1;
      if(selectedItem != -1){
        _navigationBarItems['bottom']!.elementAt(selectedItem).selected = true;
        pageTitle = navigationBarItems['bottom']!.elementAt(selectedItem).type;
      } else {
        selectedItem = _navigationBarItems['top']?.indexWhere((element) => element.id == id) ?? -1;
        if(selectedItem != -1) {
          navigationBarItems['top']!.elementAt(selectedItem).selected = true;
          pageTitle = navigationBarItems['top']!.elementAt(selectedItem).type;
        }
      }
      return pageTitle;
  }

  void _setAllNonSelected() {
    for (var element in _navigationBarItems['bottom']!) {
      element.selected = false;
    }
    for (var element in _navigationBarItems['top']!) {
      element.selected = false;
    }
  }
}
