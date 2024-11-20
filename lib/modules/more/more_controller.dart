import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MoreController extends GetxController {
  IconData darkIcon = Icons.dark_mode;
  IconData lightIcon = Icons.light_mode;
  IconData currentModeIcon = Icons.light_mode;

  String lightMode = 'Light mode';
  String darkMode = 'Dark mode';
  String currentMode = 'Dark mode';

  bool changed = true;

  void modeChange() {
    changed ? currentModeIcon = darkIcon : currentModeIcon = lightIcon;
    changed ? currentMode = darkMode : currentMode = lightMode;
    update();
  }
}
