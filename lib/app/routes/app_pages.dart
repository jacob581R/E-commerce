import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../modules/Home/bindings/home_binding.dart';
import '../modules/Home/views/home_view.dart';
import '../modules/bottomnav/bindings/bottomnav_binding.dart';
import '../modules/bottomnav/views/bottomnav_view.dart';
import '../modules/cart/bindings/cart_binding.dart';
import '../modules/cart/views/cart_view.dart';
import '../modules/favourite/bindings/favourite_binding.dart';
import '../modules/favourite/views/favourite_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding.dart';
import '../modules/signup/bindings/signup_binding.dart';
import '../modules/signup/views/signup_view.dart';

part 'app_routes.dart';

final storage = GetStorage();
bool onbardingcompleted = storage.read('onboardingCompleted') ?? false;
bool logincompleted = storage.read('logincompleted') ?? false;
bool signupcompleted = storage.read('signupcompleted') ?? false;

class AppPages {
  AppPages._();

  static var INITIAL = onbardingcompleted ? Routes.LOGIN : Routes.OnBoarding;

  static final routes = [
    GetPage(
      name: _Paths.OnBoarding,
      page: () => const OnBoarding(),
      binding: OnBoardingBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => !logincompleted ? const LoginView() : const BottomnavView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => !signupcompleted ? const SignupView() : const BottomnavView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOMNAV,
      page: () => const BottomnavView(),
      binding: BottomnavBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.FAVOURITE,
      page: () => const FavouriteView(),
      binding: FavouriteBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => const CartView(),
      binding: CartBinding(),
    ),
  ];
}
