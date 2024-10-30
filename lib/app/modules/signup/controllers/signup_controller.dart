import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  GlobalKey<FormState> formKeysignup = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();

  bool isPasswordVisible = false;

  // Name validator
  String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'enter your name';
    } else {
      return null;
    }
  }

  // Email Validator
  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an email';
    }

    final emailRegex =
        RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$');
    if (!emailRegex.hasMatch(value) || emailRegex == null) {
      return 'Please enter a valid email';
    }
    return null;
  }

  bool setPassword() {
    update(['passwordeye']);
    return isPasswordVisible = !isPasswordVisible;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a password';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  String? validateconfirmpassword(String? value) {
    if (confirmpasswordController.text != passwordController) {
      return 'password does not match';
    } else {
      return null;
    }
  }

  void submitForm() {
    if (formKeysignup.currentState?.validate() ?? false) {
      SnackBar(content: Text('Sign up successful!'));
      Get.toNamed('/bottomnav');
    }
  }

  //TODO: Implement SignupController
  void onclicklogin() {
    Get.toNamed('/login');
  }

  final count = 0.obs;
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

  void increment() => count.value++;
}
