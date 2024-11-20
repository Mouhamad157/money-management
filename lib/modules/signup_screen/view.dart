// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:money_manager/modules/main_screen/main_screen_view.dart';
import 'package:money_manager/modules/signup_screen/signup_controller.dart';

import '../../core/app_colors.dart';
import '../../core/component.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SignupController controller = Get.put(SignupController());
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: SizedBox(
            height: Get.height,
            child: Stack(
              children: [
                Positioned(
                    bottom: 450,
                    child: Container(
                      margin: const EdgeInsetsDirectional.all(30),
                      alignment: Alignment.center,
                      height: Get.height * .4,
                      width: Get.width * .87,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: controller.nameController,
                            keyboardType: TextInputType.name,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(
                                fill: 1,
                                Icons.person,
                              ),
                              labelText: 'User name',
                            ),
                          ),
                          SizedBox(
                            height: Get.height * .04,
                          ),
                          TextFormField(
                            controller: emailController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(
                                fill: 1,
                                Icons.email,
                              ),
                              hintText: '_@gmail.com',
                            ),
                          ),
                          SizedBox(
                            height: Get.height * .04,
                          ),
                          TextFormField(
                            controller: passwordController,
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: true,
                            decoration: const InputDecoration(
                              suffixIcon: Icon(Icons.remove_red_eye),
                              prefixIcon: Icon(Icons.lock),
                              labelText: 'Password',
                            ),
                            scrollPhysics: const NeverScrollableScrollPhysics(),
                          ),
                          SizedBox(
                            height: Get.height * .04,
                          ),
                          CustomButton(
                              navigator: () {
                                Get.offAll(const MainScreen(),
                                    transition: Transition.leftToRightWithFade,
                                    duration:
                                        const Duration(milliseconds: 600));
                                controller.signup(
                                    name: controller.nameController.text,
                                    email: emailController.text,
                                    password: passwordController.text);
                              },
                              buttonName: const Text(
                                'Sign up',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                              alignment: AlignmentDirectional.center,
                              height: Get.height * .05,
                              width: Get.width * .75,
                              decoration: BoxDecoration(
                                  color: AppColors().color,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10))))
                        ],
                      ),
                    )),
                Positioned(
                    bottom: 900,
                    left: 270,
                    height: Get.height * .2,
                    child: RotatedBox(
                        quarterTurns: 4,
                        child: SvgPicture.asset(
                          'assets/Path 2.svg',
                          color: AppColors().color,
                        ))),
                Positioned(
                    bottom: 900,
                    left: 150,
                    height: Get.height * .2,
                    child: RotatedBox(
                        quarterTurns: 45,
                        child: SvgPicture.asset(
                          'assets/Path 1.svg',
                          color: AppColors().color4,
                        ))),
                Positioned(
                    top: 900,
                    right: 250,
                    height: Get.height * .2,
                    child: RotatedBox(
                        quarterTurns: 2,
                        child: SvgPicture.asset(
                          'assets/Path 2.svg',
                          color: AppColors().color,
                        ))),
                Positioned(
                    top: 900,
                    right: 130,
                    height: Get.height * .2,
                    child: RotatedBox(
                        quarterTurns: 3,
                        child: SvgPicture.asset(
                          'assets/Path 1.svg',
                          color: AppColors().color4,
                        ))),
                Positioned(
                  bottom: 1020,
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
