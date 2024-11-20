import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_manager/core/network_helper/dio_helper.dart';

import 'signup_model.dart';

class SignupController extends GetxController {
  SignupModel? model;

  TextEditingController nameController = TextEditingController();

  void signup(
      {required String name,
      required String email,
      required String password}) async {
    Map<String, dynamic> result = await DioHelper.signup(
        username: name, email: email, password: password);
    model = SignupModel.fromJson(json: result);
  }
}
