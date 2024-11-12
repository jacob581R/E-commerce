import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


class OnBoardingController extends GetxController {
  final GetStorage storage = GetStorage();

// the OnBoarding data
  PageController controllerpage = PageController(initialPage: 0);

  int initialindex = 0;
  void onPageChanged(int index) {
    initialindex = index;
  }



  void completeOnboarding() {
    if (initialindex <= 2) {
      initialindex++;
      controllerpage.nextPage(
          duration: Duration(milliseconds: 300), curve: Curves.easeIn);
    }

    if (initialindex > 2) {
      Get.offNamed('/login');
      storage.write('onboardingCompleted', true);
    }
  }
}
