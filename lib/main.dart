import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:money_manager/core/app_colors.dart';
import 'modules/starting_screen/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splashIconSize: Get.height * .3,
        backgroundColor: AppColors().color,
        duration: 500,
        splashTransition: SplashTransition.slideTransition,
        splash: SvgPicture.asset('assets/wallet.svg',
        ),
        nextScreen: const StartingScreen1(),
      ),
    );
  }
}
