import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        padding: const EdgeInsets.fromLTRB(19, 28, 19, 72),
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            //color: Color(0xffFAFAFA),
            borderRadius: BorderRadiusDirectional.all(Radius.circular(16))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              "Login",
              style: TextStyle(
                  fontSize: 32,
                  color: Color(0xffbcb37b),
                  fontFamily: 'InriaSans'),
            ),
            GetBuilder(
              id: "form_update",
              init: LoginController(),
              builder: (controller) => Form(
                  key: controller.formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: controller.validateEmail,
                        controller: controller.emailController,
                        decoration: const InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff464748)),
                            ),
                            label: Text(
                              'User Name',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff474648),
                                  fontFamily: 'InriaSans'),
                            ),
                            hintText: 'User Name',
                            hintStyle: TextStyle(
                                color: Color(0xff474648),
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'InriaSans'),
                            suffixIcon:
                                // Image.asset('assets/images/account_icon.png')
                                Icon(
                              Icons.person_2_outlined,
                              color: Color(0xff474648),
                            )),
                      ),
                      GetBuilder(
                        id: 'passwordeye',
                        init: LoginController(),
                        builder: (controller) => TextFormField(
                          controller: controller.passwordController,
                          validator: controller.validatePassword,
                          obscureText: !controller.isPasswordVisible,
                          decoration: InputDecoration(
                              focusedBorder: const UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xff464748)),
                              ),
                              label: const Text(
                                'Password',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'InriaSans',
                                  color: Color(0xff474648),
                                ),
                              ),
                              hintText: 'Password',
                              hintStyle: const TextStyle(
                                  color: Color(0xff474648),
                                  fontSize: 20,
                                  fontFamily: 'InriaSans'),
                              suffixIcon: IconButton(
                                  color: const Color(0xff4647484),
                                  onPressed: controller.setPassword,
                                  icon: Icon(controller.isPasswordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off))),
                        ),
                      ),
                    ],
                  )),
            ),
            MaterialButton(
              onPressed: controller.submitForm,
              child: Container(
                margin: const EdgeInsets.only(top: 25),
                width: 380,
                height: 45,
                decoration: const BoxDecoration(
                    color: Color(0xff790000),
                    borderRadius: const BorderRadius.all(Radius.circular(15))),
                child: TextButton(
                    onPressed: controller.submitForm,
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          color: Color(0xffbcb37b),
                          fontSize: 20,
                          fontFamily: 'InriaSans'),
                    )),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'if you do not have account register now',
                  style: TextStyle(fontSize: 12),
                ),
                TextButton(
                    onPressed: controller.navigateToSignup,
                    child: Text('Sign Up'))
              ],
            )
          ],
        ),
      ),
    ));
  }
}
