import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:money_manager/modules/add_goals/add_goals_controller.dart';

import '../../core/app_colors.dart';

class AddGoals extends StatelessWidget {
  const AddGoals({super.key});

  @override
  Widget build(BuildContext context) {
    AddGoalController controller = Get.put(AddGoalController());
    TextEditingController goalNameController = TextEditingController();
    TextEditingController payoutController = TextEditingController();
    TextEditingController startDateController = TextEditingController();
    TextEditingController endDateController = TextEditingController();
    DateTime deadline = DateTime(2025);
    return SafeArea(
        child: Scaffold(
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
            padding:
                EdgeInsetsDirectional.symmetric(horizontal: Get.width * .02),
            height: Get.height * .05,
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      size: Get.height * .03,
                      Icons.arrow_back,
                      color: AppColors().color3,
                    )),
                Text(
                  'Add goal',
                  style: TextStyle(
                      color: AppColors().color3, fontSize: Get.height * .02),
                ),
              ],
            ),
          ),
          Positioned(
            top: Get.height * .1,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                        margin: EdgeInsetsDirectional.symmetric(
                            horizontal: Get.width * .03),
                        width: Get.width * .3,
                        child: Text(
                          'goal name : ',
                          style: TextStyle(
                              color: AppColors().color4,
                              fontSize: Get.height * .02),
                        )),
                    Container(
                      margin: EdgeInsetsDirectional.symmetric(
                          horizontal: Get.width * .02),
                      height: Get.height * .06,
                      width: Get.width * .6,
                      decoration: BoxDecoration(
                          color: AppColors().color3,
                          borderRadius: BorderRadius.all(
                              Radius.circular(Get.width * .03))),
                      child: TextFormField(
                        controller: goalNameController,
                        decoration: const InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent))),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: Get.height * .02,
                ),
                Row(
                  children: [
                    Container(
                        margin: EdgeInsetsDirectional.symmetric(
                            horizontal: Get.width * .03),
                        width: Get.width * .3,
                        child: Text(
                          'Pay out : ',
                          style: TextStyle(
                              color: AppColors().color4,
                              fontSize: Get.height * .02),
                        )),
                    Container(
                      margin: EdgeInsetsDirectional.symmetric(
                          horizontal: Get.width * .02),
                      height: Get.height * .06,
                      width: Get.width * .6,
                      decoration: BoxDecoration(
                          color: AppColors().color3,
                          borderRadius: BorderRadius.all(
                              Radius.circular(Get.width * .03))),
                      child: TextFormField(
                        controller: payoutController,
                        decoration: const InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent))),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: Get.height * .02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        margin: EdgeInsetsDirectional.symmetric(
                            horizontal: Get.width * .03),
                        width: Get.width * .4,
                        child: Text(
                          'Expected end date : ',
                          style: TextStyle(
                              color: AppColors().color4,
                              fontSize: Get.height * .02),
                        )),
                    IconButton(
                        onPressed: () {
                          showDatePicker(
                              context: (context),
                              initialDate: DateTime.now(),
                              firstDate: DateTime.now(),
                              lastDate: deadline);
                        },
                        icon: Icon(
                          Icons.calendar_month,
                          color: AppColors().color4,
                          size: Get.height * .03,
                        ))
                  ],
                ),
                SizedBox(
                  height: Get.height * .05,
                ),
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    alignment: AlignmentDirectional.center,
                    height: Get.height * .04,
                    width: Get.width,
                    margin: EdgeInsetsDirectional.symmetric(
                        horizontal: Get.width * .25),
                    decoration: BoxDecoration(
                      color: AppColors().color4,
                      borderRadius:
                          BorderRadius.all(Radius.circular(Get.width * .1)),
                    ),
                    child: Text(
                      'Done',
                      style: TextStyle(
                          fontSize: 20,
                          color: AppColors().color1,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
