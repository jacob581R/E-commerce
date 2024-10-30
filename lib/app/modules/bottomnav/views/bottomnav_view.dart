import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bottomnav_controller.dart';

class BottomnavView extends GetView<BottomnavController> {
  const BottomnavView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder(
        init: BottomnavController(),
        builder: (controller) =>
            Center(child: controller.getview(controller.selectedIndex)),
      ),
      bottomNavigationBar: GetBuilder(
        init: BottomnavController(),
        builder: (BottomnavController controllers) => BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_off_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline), label: ""),
          ],
          currentIndex: controller.selectedIndex,
          onTap: controller.ontapped,
        ),
      ),
    );
  }
}
