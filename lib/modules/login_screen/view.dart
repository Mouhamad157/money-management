// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:money_manager/core/app_colors.dart';
import 'package:money_manager/core/component.dart';
import 'package:money_manager/modules/login_screen/login_controller.dart';
import 'package:money_manager/modules/main_screen/main_screen_view.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController controller = Get.put(LoginController());
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: SizedBox(
            height: Get.height,
            width: Get.width,
            child: Stack(
              children: [
                SvgPicture.asset(
                  'assets/login.svg',
                  width: Get.size.width,
                  height: Get.size.height,
                ),
                Positioned(
                    bottom: Get.height * .4,
                    child: Container(
                      margin: const EdgeInsetsDirectional.all(30),
                      alignment: Alignment.center,
                      height: Get.height * .4,
                      width: Get.width * .87,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: emailController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: AppColors().color4)),
                                prefixIcon: Icon(
                                  fill: 1,
                                  Icons.email,
                                  color: AppColors().color4,
                                ),
                                hintText: '_@gmail.com',
                                hintStyle:
                                    TextStyle(color: AppColors().color4)),
                          ),
                          SizedBox(
                            height: Get.height * .04,
                          ),
                          TextFormField(
                            controller: passwordController,
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: true,
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: AppColors().color4)),
                                suffixIcon: Icon(Icons.remove_red_eye,
                                    color: AppColors().color4),
                                prefixIcon:
                                    Icon(Icons.lock, color: AppColors().color4),
                                labelText: 'Password',
                                labelStyle:
                                    TextStyle(color: AppColors().color4)),
                          ),
                        ],
                      ),
                    )),
                Positioned(
                  top: Get.height * .35,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: EdgeInsetsDirectional.all(Get.width * .1),
                    child: CustomButton(
                        navigator: () {
                          Get.offAll(const MainScreen(),
                              transition: Transition.leftToRightWithFade,
                              duration: const Duration(milliseconds: 600));
                          controller.login(email: emailController.text, password: passwordController.text);
                        },
                        buttonName: const Text(
                          'Log in',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                        alignment: AlignmentDirectional.center,
                        height: Get.height * .05,
                        width: Get.width,
                        decoration: BoxDecoration(
                            color: AppColors().color,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)))),
                  ),
                ),
                Positioned(
                  top: Get.height * .01,
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
