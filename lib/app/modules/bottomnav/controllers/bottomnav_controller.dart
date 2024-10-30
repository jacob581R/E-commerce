import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../Home/views/home_view.dart';
import '../../search/views/search_view.dart';
import '../../favourite/views/favourite_view.dart';

class BottomnavController extends GetxController {
  //TODO: Implement BottomnavController
  int selectedIndex = 0;

  void ontapped(int index) {
    selectedIndex = index;
    update();
  }

  Widget? getview(int index) {
    update(["displayes_section"]);
    switch (index) {
      case 0:
        return HomeView();
      case 1:
        return SearchView();

      case 2:
        return FavouriteView();

      default:
        return HomeView();
    }
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
