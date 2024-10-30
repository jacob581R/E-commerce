import 'package:get/get.dart';

import '../controllers/onboarding_controller.dart';

class OnBoarding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnBoardingController>(
      () => OnBoardingController(),
    );
  }
}
