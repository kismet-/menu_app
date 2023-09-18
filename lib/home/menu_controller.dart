import 'package:get/get.dart';
import 'package:menu_app/model/menu_item.dart';

class MenuController extends GetxController {
  RxList<MenuItem> menuItems = RxList<MenuItem>();

  // 'SANDWICHES',
  // 'COLD',
  // 'HOT',
  // '',
  // 'TACOS',
  // 'ENCHILADAS',
  // 'QUICHE',
  // 'GREEN SALADS',

  @override
  void onInit() {
    menuItems.assignAll(appetizers);
    super.onInit();
  }

  void onMenuOptionTapped(String item) {
    if (item == 'APPETIZERS') {
      menuItems.assignAll(appetizers);
    }
    if (item == 'ENTREES') {
      menuItems.assignAll(entrees);
    }
    if (item == 'SANDWICHES') {
      menuItems.assignAll(sandwiches);
    }
    if (item == 'SOUP & SALAD COMBOS') {
      menuItems.assignAll(soupCombo);
    }
    if (item == 'FAJITAS') {
      menuItems.assignAll(fajitas);
    }
    if (item == 'TACOS') {
      menuItems.assignAll(tacos);
    }
    if (item == 'ENCHILADAS') {
      menuItems.assignAll(enchiladas);
    }
    if (item == 'QUICHE') {
      menuItems.assignAll(quiche);
    }
    if (item == 'GREEN SALADS') {
      menuItems.assignAll(greenSalads);
    }
  }
}
