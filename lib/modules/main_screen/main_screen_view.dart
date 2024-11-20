// ignore_for_file: avoid_print

import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_manager/modules/home/view.dart';
import 'package:money_manager/modules/main_screen/main_screen_controller.dart';
import 'package:money_manager/modules/more/more_view.dart';
import 'package:money_manager/modules/wallets/wallet_view.dart';

import '../../core/app_colors.dart';

class MainScreen extends GetView<MainScreenController> {
   const MainScreen({super.key});


  @override
  Widget build(BuildContext context) {
    Get.put(MainScreenController());
    List<Widget> screens = [
      const Home(),
      const Wallets(),
      const More(),
    ];
    return GetBuilder<MainScreenController>(
      builder: (_) {
        return Scaffold(
          bottomNavigationBar: SizedBox(
          height: Get.height * .08,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleNavBar(
                elevation: 0,
                onTap: (value) {
                  controller.bottomBarIcons();
                  controller.index = value;
                  return controller.index;

                },
                tabCurve: Curves.easeInOut,
                activeIndex: controller.index,
                circleWidth: Get.width * .13,
                color: AppColors().color4,
                activeIcons: [
                  controller.homeIcon,
                  controller.walletIcon,
                  controller.moreIcon,
                ],
                inactiveIcons: [
                  controller.homeIcon,
                  controller.walletIcon,
                  controller.moreIcon
                ],
                height: Get.height * .06,
              ),
              Container(
                alignment: AlignmentDirectional.topCenter,
                height: Get.height * .02,
                width: Get.width,
                color: AppColors().color4,
                child: Row(
                  children: [
                    Container(
                      alignment: AlignmentDirectional.center,
                      width: Get.width / 3,
                      child: Text(
                        'Home',
                        style: TextStyle(
                            color: AppColors().color3, fontSize: 20),
                      ),
                    ),
                    Container(
                      alignment: AlignmentDirectional.center,
                      width: Get.width / 3,
                      child: Text(
                        'Wallet',
                        style: TextStyle(
                            color: AppColors().color3, fontSize: 20),
                      ),
                    ),
                    Container(
                      alignment: AlignmentDirectional.center,
                      width: Get.width / 3,
                      child: Text(
                        'More',
                        style: TextStyle(
                            color: AppColors().color3, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        body: screens[controller.index] ,
        );
      }
    );
  }
}
