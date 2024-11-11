import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
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
          builder: (BottomnavController controller) =>
              AnimatedBottomNavigationBar(
                splashColor: Color(0xff5b0b0b),
                activeColor: Color(0xffbcb37b),
                inactiveColor: Color(0xff790000),
                icons: controller.iconList,
                gapLocation: GapLocation.end,
                gapWidth: 16,
                notchSmoothness: NotchSmoothness.softEdge,
                activeIndex: controller.selectedIndex,
                onTap: controller.ontapped,
              )),
    );
  }
}
