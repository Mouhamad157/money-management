import 'package:get/get.dart';
import 'package:money_manager/core/network_helper/dio_helper.dart';
import 'package:money_manager/modules/add_goals/add_goals_model.dart';

class AddGoalController extends GetxController {
  AddGoalModel? model;

  void addGoal({required String name,
    required int payout,
    required String startDate,
    required String endDate}) async {
    Map<String, dynamic> result = await DioHelper.createGoal(
        name: name, payout: payout, startDate: startDate, endDate: endDate);
    model = AddGoalModel.fromJson(json: result);
  }
}
