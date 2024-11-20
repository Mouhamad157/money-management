import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_manager/modules/home/view.dart';
import 'package:money_manager/modules/more/more_view.dart';
import 'package:money_manager/modules/wallets/wallet_view.dart';

import '../../core/app_colors.dart';

class HomeController extends GetxController {
  HomeController();


  bool isChecked = true;
  Color color = AppColors().color4;
  bool isNotChecked = false;
  Color color2 = AppColors().color3;


  void containerColorChanger() {
    isChecked = !isChecked;
    isNotChecked = !isChecked;
    update();
  }


  String syp = 'SYP';
  String usd = 'USD';
  String eup = 'EUP';
  String selectedItem = 'SYP';
}
