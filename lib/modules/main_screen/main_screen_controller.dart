import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/app_colors.dart';
import '../home/view.dart';
import '../more/more_view.dart';
import '../wallets/wallet_view.dart';

class MainScreenController extends GetxController{
  MainScreenController();
  int index = 0;

  Widget homeIcon = Icon(Icons.home, color: AppColors().color3);
  Widget walletIcon = Icon(Icons.wallet, color: AppColors().color3);
  Widget moreIcon = Icon(Icons.more_horiz, color: AppColors().color3);
  Widget selectedIcon = Icon(Icons.home, color: AppColors().color3);

  void bottomBarIcons() {
    if (index == 0) {
      selectedIcon = homeIcon;
    } else if (index == 1) {
      selectedIcon = walletIcon;
    } else {
      selectedIcon = moreIcon;
    }
    update();
  }

}