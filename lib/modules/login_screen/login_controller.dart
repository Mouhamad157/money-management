import 'package:get/get.dart';
import 'package:money_manager/core/network_helper/dio_helper.dart';
import 'login_model.dart';

class LoginController extends GetxController {
  LoginModel? model;

  void login({
    required String email,
    required String password,
  }) async  {
    Map<String, dynamic> result =
        await DioHelper.login(email: email, password: password);
    model = LoginModel.fromJson(json: result);
  }
}
