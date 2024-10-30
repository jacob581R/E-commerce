import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:task7/app/data/onboardingcontents.dart';

class OnBoardingController extends GetxController {
  //TODO: Implement HomeController
  final GetStorage storage = GetStorage();

  final count = 0.obs;

// the OnBoarding data

  List<OnBoardingContent> contents = [
    OnBoardingContent(
        image: 'assets/images/intro1.png',
        logo: 'assets/images/logo1.png',
        desc: ''),
    OnBoardingContent(
      image: 'assets/images/intro2.png',
      logo: 'assets/images/logo1.png',
      desc: '',
    ),
    OnBoardingContent(
        image: 'assets/images/intro2.png',
        logo: 'assets/images/logo1.png',
        desc: 'In London'),
    OnBoardingContent(
        image: 'assets/images/intro3.png',
        logo: 'assets/images/logo1.png',
        desc: ''),
    OnBoardingContent(
        image: 'assets/images/intro3.png',
        logo: 'assets/images/logo1.png',
        desc: 'In Dubai'),
    OnBoardingContent(
        image: 'assets/images/intro4.png',
        logo: 'assets/images/logo1.png',
        desc: ''),
    OnBoardingContent(
        image: 'assets/images/intro4.png',
        logo: 'assets/images/logo1.png',
        desc: 'In Barcelona'),
  ];

  void increment() => count.value++;
  void completeOnboarding() {
    Get.offNamed('/login');
    storage.write('onboardingCompleted', true);
  }
}
