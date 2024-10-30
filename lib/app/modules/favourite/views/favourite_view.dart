import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/favourite_controller.dart';

class FavouriteView extends GetView<FavouriteController> {
  const FavouriteView({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'FavouriteView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
