import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
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
              "Sign Up",
              style: TextStyle(
                  fontSize: 32,
                  color: Color(0xffbcb37b),
                  fontFamily: 'InriaSans'),
            ),
            Form(
                key: controller.formKeysignup,
                child: Column(
                  children: [
                    TextFormField(
                      validator: controller.validateName,
                      controller: controller.nameController,
                      decoration: const InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff464748)),
                        ),
                        label: Text(
                          'Name',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff474648),
                              fontFamily: 'InriaSans'),
                        ),
                        hintText: 'Name',
                        hintStyle: TextStyle(
                            color: Color(0xff474648),
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'InriaSans'),
                      ),
                    ),
                    TextFormField(
                      validator: controller.validateEmail,
                      controller: controller.emailController,
                      decoration: const InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff464748)),
                        ),
                        label: Text(
                          'E-mail',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff474648),
                              fontFamily: 'InriaSans'),
                        ),
                        hintText: 'E-mail',
                        hintStyle: TextStyle(
                            color: Color(0xff474648),
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'InriaSans'),
                      ),
                    ),
                    TextFormField(
                      controller: controller.passwordController,
                      validator: controller.validatePassword,
                      obscureText: !controller.isPasswordVisible,
                      decoration: InputDecoration(
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff464748)),
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
                      ),
                    ),
                    TextFormField(
                      controller: controller.confirmpasswordController,
                      validator: controller.validateconfirmpassword,
                      obscureText: !controller.isPasswordVisible,
                      decoration: InputDecoration(
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff464748)),
                        ),
                        label: const Text(
                          'Confirm Password',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'InriaSans',
                            color: Color(0xff474648),
                          ),
                        ),
                        hintText: 'Confirm Password',
                        hintStyle: const TextStyle(
                            color: Color(0xff474648),
                            fontSize: 20,
                            fontFamily: 'InriaSans'),
                      ),
                    ),
                    MaterialButton(
                      onPressed: controller.submitForm,
                      child: Container(
                        margin: const EdgeInsets.only(top: 25),
                        width: 380,
                        height: 45,
                        decoration: const BoxDecoration(
                            color: Color(0xff790000),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15))),
                        child: TextButton(
                            onPressed: controller.submitForm,
                            child: const Text(
                              'Sign Up',
                              style: TextStyle(
                                  color: Color(0xffbcb37b),
                                  fontSize: 20,
                                  fontFamily: 'InriaSans'),
                            )),
                      ),
                    ),
                  ],
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'if you have account',
                  style: TextStyle(fontSize: 12),
                ),
                TextButton(
                    onPressed: controller.onclicklogin, child: Text('Log In'))
              ],
            )
          ],
        ),
      ),
    ));
  }
}
