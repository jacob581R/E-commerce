import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/onboarding_controller.dart';

class OnBoarding extends GetView<OnBoardingController> {
  const OnBoarding({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GetBuilder(
              builder: (OnBoardingController controller) => PageView(
                    controller: controller.controllerpage,
                    onPageChanged: controller.onPageChanged,
                    children: [
                      SizedBox(
                        child: Image.asset(
                          'assets/images/intro3.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        child: Image.asset(
                          'assets/images/intro2.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        child: Image.asset(
                          'assets/images/intro1.jpg',
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  )),
          Container(
            margin: const EdgeInsets.fromLTRB(158, 695, 0, 0),
            width: 74,
            height: 74,
            decoration: const BoxDecoration(
                color: Color(0xff8f8023), shape: BoxShape.circle),
            child: Center(
                child: IconButton(
              onPressed: controller.completeOnboarding,
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: Color(0xff5b0b0b),
              ),
            )),
          )
        ],
      ),
    );
  }
}

