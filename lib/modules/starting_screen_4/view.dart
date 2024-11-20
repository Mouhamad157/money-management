import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:money_manager/core/app_colors.dart';
import 'package:money_manager/core/component.dart';
import 'package:money_manager/modules/login_screen/view.dart';
import 'package:money_manager/modules/signup_screen/view.dart';

class StartingScreen4 extends StatelessWidget {
  const StartingScreen4({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors().color4,
        body: SizedBox(
          width: Get.width,
          height: Get.height,
          child: Stack(
            children: [
              SvgPicture.asset(
                'assets/on board.svg',
                height: Get.height,
                width: Get.width,
              ),
              Positioned(
                bottom: Get.height*.3,
                left: Get.width*.17,
                child: SizedBox(
                  width: Get.width * .5,
                  height: Get.height * .12,
                  child: const Text(
                    'Best way to track your money.',
                    maxLines: 3,
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Positioned(
                bottom: Get.height*.25,
                left: Get.width*.17,
                child: SizedBox(
                  width: Get.width * .7,
                  height: Get.height * .05,
                  child: const Text(
                    'Control and track what you spend your money on',
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white54,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: Get.height*.73,
                child: Padding(
                  padding:  EdgeInsetsDirectional.all(Get.width*.1),
                  child: CustomButton(
                    navigator: () {
                      Get.to(const LoginScreen(),
                          transition: Transition.leftToRightWithFade,duration: const Duration(milliseconds: 500));
                    },
                    buttonName: const Text('Log In',
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    height: Get.height * .05,
                    width: Get.width * .7,
                    alignment: AlignmentDirectional.center,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        color: AppColors().color3),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: Get.height*.8,
                child: Padding(
                  padding: EdgeInsetsDirectional.all(Get.width*.1),
                  child: CustomButton(
                    navigator: () {
                      Get.to(const SignUpScreen(),
                          transition: Transition.leftToRightWithFade,duration: const Duration(milliseconds: 500));
                    },
                    buttonName: const Text('Sign up',
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    height: Get.height * .05,
                    width: Get.width * .7,
                    alignment: AlignmentDirectional.center,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        color: AppColors().color3),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
