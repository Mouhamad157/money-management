import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:money_manager/core/app_colors.dart';
import 'package:money_manager/modules/starting_screen_3/view.dart';

class StartingScreen2 extends StatelessWidget {
  const StartingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: GestureDetector(
          onTap: () {
            Get.off(const StartingScreen3(),
                transition: Transition.rightToLeft);
          },
          child: Container(height: Get.height*.05,
            decoration: BoxDecoration(
                color: AppColors().color2,
                borderRadius: const BorderRadius.all(Radius.circular(50))),
            child:
                SvgPicture.asset('assets/next.svg',height: Get.height*.05,),
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
              child:  Text(
                'Save your money',
                style: TextStyle(fontSize: 30, color: AppColors().color1),
              ),
            ),
              Positioned(
                  bottom: Get.height*.8,
                  left: Get.width*.55,
                  height: Get.height * .2,
                  child: RotatedBox(
                      quarterTurns: 4,
                      child: SvgPicture.asset(
                        'assets/Path 2.svg',
                        color: AppColors().color3,
                      ))),
              Positioned(
                  bottom: Get.height*.8,
                  left: Get.width*.3,
                  height: Get.height * .2,
                  child: RotatedBox(
                      quarterTurns: 45,
                      child: SvgPicture.asset('assets/Path 1.svg'))),
              Positioned(
                top: Get.height*.3,
                right: Get.width*.1,
                child: SvgPicture.asset(
                  allowDrawingOutsideViewBox: true,
                  height: Get.height * .6,
                  'assets/money.svg',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
