import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:money_manager/core/app_colors.dart';
import 'package:money_manager/modules/starting_screen_4/view.dart';

import '../../core/component.dart';

class StartingScreen3 extends StatelessWidget {
  const StartingScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors().color4,
        body: SizedBox(
          height: Get.height,
          width: Get.width,
          child: Stack(
            children: [
              Positioned(
                  bottom: Get.height * .8,
                  left: Get.width * .55,
                  height: Get.height * .2,
                  child: RotatedBox(
                      quarterTurns: 4,
                      child: SvgPicture.asset(
                        'assets/Path 2.svg',
                        color: AppColors().color3,
                      ))),
              Positioned(
                  bottom: Get.height * .8,
                  left: Get.width * .3,
                  height: Get.height * .2,
                  child: RotatedBox(
                      quarterTurns: 45,
                      child: SvgPicture.asset('assets/Path 1.svg'))),
              Positioned(
                bottom: Get.height * .75,
                child: SizedBox(
                  height: Get.height * .04,
                  child: Text(
                    'Set new money GOALS',
                    style: TextStyle(fontSize: 30, color: AppColors().color1),
                  ),
                ),
              ),
              Positioned(
                right: 0,
                left: 0,
                top: Get.height * .3,
                child: SvgPicture.asset(
                  'assets/goal.svg',
                  height: Get.height*.3,

                ),
              ),
              Positioned(
                top: Get.height*.8,
                right: 0,
                left: 0,
                child: Padding(
                  padding:  EdgeInsetsDirectional.all(Get.width*.1),
                  child: CustomButton(
                    navigator: () {
                      Get.off(const StartingScreen4(),
                          transition: Transition.rightToLeftWithFade,duration: const Duration(milliseconds: 500));
                    },
                    buttonName: const Text('Get started',
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    height: Get.height * .05,
                    width: Get.width,
                    alignment: AlignmentDirectional.center,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        color: AppColors().color3),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
