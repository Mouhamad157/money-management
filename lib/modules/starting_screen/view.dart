import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:money_manager/core/app_colors.dart';
import 'package:money_manager/modules/starting_screen_2/view.dart';

class StartingScreen1 extends StatelessWidget {
  const StartingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: GestureDetector(
          onTap: () {
            Get.off(const StartingScreen2(),
                transition: Transition.rightToLeft);
          },
          child: Container(
            decoration: BoxDecoration(
                color: AppColors().color2,
                borderRadius: const BorderRadius.all(Radius.circular(50))),
            child:
                SvgPicture.asset('assets/next.svg', height: Get.height * .05),
          ),
        ),
        backgroundColor: AppColors().color4,
        body: SizedBox(
          width: Get.width,
          height: Get.height,
          child: Stack(
            children: [
              Positioned(
                bottom: Get.height*.75,
                child: Text(
                  'Managing wallet is super easy',
                  style: TextStyle(color: AppColors().color1,fontSize: 30),
                ),
              ),
              Positioned(
                top: Get.height * .3,
                right: Get.width * .1,
                child: SvgPicture.asset(
                  height: Get.height * .6,
                  'assets/money (6).svg',
                ),
              ),
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
            ],
          ),
        ),
      ),
    );
  }
}
