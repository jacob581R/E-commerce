import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:task7/app/modules/cart/views/cart_view.dart';
import '../../Home/views/home_view.dart';

import '../../favourite/views/favourite_view.dart';

class BottomnavController extends GetxController {
  //TODO: Implement BottomnavController
  int selectedIndex = 0;

  void ontapped(int index) {
    selectedIndex = index;
    update();
  }

  List<IconData> iconList = [
    Icons.home,
    Icons.favorite,
    Icons.shopping_cart,
  ];

  Widget? getview(int index) {
    update(["displayes_section"]);
    switch (index) {
      case 0:
        return HomeView();
      case 1:
        return FavouriteView();
      case 2:
        return CartView();
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
