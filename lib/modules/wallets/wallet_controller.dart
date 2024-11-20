import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/app_colors.dart';


class WalletController extends GetxController{
  int index = 1;
  Widget homeIcon =  Icon(Icons.home,color: AppColors().color3);
  Widget walletIcon =   Icon(Icons.wallet,color: AppColors().color3);
  Widget settingIcon =   Icon(Icons.settings,color: AppColors().color3);
  Widget selectedIcon =   Icon(Icons.home,color: AppColors().color3);

}