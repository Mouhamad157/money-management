import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:money_manager/modules/add_goals/add_goals_view.dart';
import 'package:money_manager/modules/more/more_controller.dart';
import 'package:money_manager/modules/my_goals/my_goals_view.dart';
import 'package:money_manager/modules/starting_screen_4/view.dart';

import '../../core/app_colors.dart';

class More extends GetView<MoreController> {
  const More({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MoreController());
    return SafeArea(
      child: GetBuilder<MoreController>(builder: (context) {
        return Scaffold(
          body: Stack(
            children: [
              SvgPicture.asset(
                'assets/Add Transaction.svg',
                fit: BoxFit.fill,
                width: Get.width,
                height: Get.height,
              ),
              Container(
                color: AppColors().color4,
                height: Get.height * .05,
              ),
              Container(
                padding: EdgeInsetsDirectional.symmetric(
                    horizontal: Get.width * .02),
                height: Get.height * .05,
                child: Row(
                  children: [
                    Text(
                      'More options',
                      style: TextStyle(
                          color: AppColors().color3,
                          fontSize: Get.height * .02),
                    ),
                  ],
                ),
              ),
              Positioned(
                  top: Get.height * .1,
                  left: Get.width * .1,
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(const MyGoals(),
                              transition: Transition.upToDown,
                              duration: const Duration(milliseconds: 500));
                        },
                        child: SizedBox(
                          width: Get.width * .4,
                          height: Get.height * .05,
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/target.svg',
                                  height: Get.height * .02),
                              SizedBox(
                                width: Get.width * .03,
                              ),
                              Text(
                                'MY goals',
                                style: TextStyle(
                                    color: AppColors().color4,
                                    fontSize: Get.height * .02,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Get.height * .02,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(const AddGoals(),
                              transition: Transition.downToUp,
                              duration: const Duration(milliseconds: 500));
                        },
                        child: SizedBox(
                          width: Get.width * .4,
                          height: Get.height * .05,
                          child: Row(
                            children: [
                              Icon(
                                Icons.add,
                                color: AppColors().color4,
                              ),
                              SizedBox(
                                width: Get.width * .03,
                              ),
                              Text(
                                'Add goal',
                                style: TextStyle(
                                    color: AppColors().color4,
                                    fontSize: Get.height * .02,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Get.height * .02,
                      ),
                      InkWell(
                        onTap: ()  {
                          controller.modeChange();
                          controller.changed = !controller.changed;
                        },
                        child: SizedBox(
                          width: Get.width * .4,
                          height: Get.height * .05,
                          child: Row(
                            children: [
                              Icon(
                                controller.currentModeIcon,
                                color: AppColors().color4,
                              ),
                              SizedBox(
                                width: Get.width * .03,
                              ),
                              Text(
                                controller.currentMode,
                                style: TextStyle(
                                    color: AppColors().color4,
                                    fontSize: Get.height * .02,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Get.height * .02,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.offAll(const StartingScreen4(),
                              transition: Transition.leftToRight);
                        },
                        child: SizedBox(
                          width: Get.width * .4,
                          height: Get.height * .05,
                          child: Row(
                            children: [
                              Icon(
                                Icons.logout,
                                color: AppColors().color4,
                              ),
                              SizedBox(
                                width: Get.width * .03,
                              ),
                              Text(
                                'Log out',
                                style: TextStyle(
                                    color: AppColors().color4,
                                    fontSize: Get.height * .02,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        );
      }),
    );
  }
}
