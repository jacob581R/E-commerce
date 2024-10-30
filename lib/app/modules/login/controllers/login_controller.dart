import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  final count = 0.obs;

  void increment() => count.value++;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPasswordVisible = false;

  // Email Validator
  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      update(["form_update"]);
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

  void submitForm() {
    if (formKey.currentState?.validate() ?? false) {
      SnackBar(content: Text('Login successful!'));
      Get.toNamed('/bottomnav');
    } else {
      update(["form_update"]);
    }
  }

  void navigateToSignup() {
    Get.toNamed('/signup');
  }
}
