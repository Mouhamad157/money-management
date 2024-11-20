import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:money_manager/core/app_colors.dart';
import 'package:money_manager/modules/add_transactions/contoller.dart';

import '../home/view.dart';

class AddTransactions extends GetView<AddTransactionsController> {
  const AddTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AddTransactionsController());
    return SafeArea(
      child: GetBuilder<AddTransactionsController>(builder: (_) {
        return Scaffold(
          body: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Stack(children: [
              SvgPicture.asset(
                fit: BoxFit.fill,
                'assets/Add Transaction.svg',
                height: Get.height,
                width: Get.width,
              ),
              Container(
                color: AppColors().color4,
                width: Get.width,
                height: Get.height * .05,
              ),
              Positioned(
                top: Get.height * .006,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: AppColors().color3,
                        )),
                    Text(
                      'Add transaction',
                      style: TextStyle(color: AppColors().color3, fontSize: 20),
                    )
                  ],
                ),
              ),
              Positioned(
                  right: 0,
                  left: 0,
                  top: Get.height * .1,
                  child: Container(
                    margin: EdgeInsetsDirectional.all(Get.height * .01),
                    padding: EdgeInsetsDirectional.all(Get.height * .01),
                    width: Get.width,
                    height: Get.height * .07,
                    decoration: BoxDecoration(
                        color: AppColors().color3,
                        borderRadius: BorderRadius.all(
                            Radius.circular(Get.height * .015))),
                    child: Row(children: [
                      Text(
                        'The amount paid ',
                        style: TextStyle(
                            color: AppColors().color,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          width: Get.width * .5,
                          child: TextFormField(
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors().color),
                              ),
                              iconColor: AppColors().color,
                              enabled: true,
                              fillColor: Colors.red,
                            ),
                          )),
                      IconButton(
                        iconSize: Get.height * .035,
                        onPressed: () {},
                        icon: Icon(
                          Icons.calculate_outlined,
                          color: AppColors().color,
                        ),
                      )
                    ]),
                  )),
              Positioned(
                  right: 0,
                  left: 0,
                  top: Get.height * .2,
                  child: Container(
                      margin: EdgeInsetsDirectional.all(Get.height * .01),
                      padding: EdgeInsetsDirectional.all(Get.height * .01),
                      width: Get.width,
                      height: Get.height * .07,
                      decoration: BoxDecoration(
                          color: AppColors().color3,
                          borderRadius: BorderRadius.all(
                              Radius.circular(Get.height * .015))),
                      child: Row(children: [
                        Text(
                          'Things purchased ',
                          style: TextStyle(
                              color: AppColors().color,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                            width: Get.width * .5,
                            child: TextFormField(
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColors().color),
                                ),
                                iconColor: AppColors().color,
                                enabled: true,
                                fillColor: Colors.red,
                              ),
                            )),
                      ]))),
              Positioned(
                  right: 0,
                  left: 0,
                  top: Get.height * .3,
                  child: Container(
                      margin: EdgeInsetsDirectional.all(Get.height * .01),
                      padding: EdgeInsetsDirectional.all(Get.height * .01),
                      width: Get.width,
                      height: Get.height * .07,
                      decoration: BoxDecoration(
                          color: AppColors().color3,
                          borderRadius: BorderRadius.all(
                              Radius.circular(Get.height * .015))),
                      child: Row(children: [
                        Text(
                          'Choose wallet ',
                          style: TextStyle(
                              color: AppColors().color,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: Get.width * .05,
                        ),
                        SizedBox(
                            width: Get.width * .5,
                            child: TextFormField(
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColors().color),
                                ),
                                iconColor: AppColors().color,
                                enabled: true,
                                fillColor: Colors.red,
                              ),
                            )),
                      ]))),
              Positioned(
                  right: 0,
                  left: 0,
                  top: Get.height * .4,
                  child: Container(
                      margin: EdgeInsetsDirectional.all(Get.height * .01),
                      padding: EdgeInsetsDirectional.all(Get.height * .01),
                      width: Get.width,
                      height: Get.height * .07,
                      decoration: BoxDecoration(
                          color: AppColors().color3,
                          borderRadius: BorderRadius.all(
                              Radius.circular(Get.height * .015))),
                      child: Row(children: [
                        Text(
                          'Date ',
                          style: TextStyle(
                              color: AppColors().color,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: Get.width * .21,
                        ),
                        SizedBox(
                            width: Get.width * .5,
                            child: TextFormField(
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColors().color),
                                ),
                                iconColor: AppColors().color,
                                enabled: true,
                                fillColor: Colors.red,
                              ),
                            )),
                      ]))),
              Positioned(
                  right: 0,
                  left: 0,
                  top: Get.height * .5,
                  child: Container(
                    margin: EdgeInsetsDirectional.all(Get.height * .01),
                    padding: EdgeInsetsDirectional.all(Get.height * .01),
                    width: Get.width,
                    decoration: BoxDecoration(
                        color: AppColors().color3,
                        borderRadius: BorderRadius.all(
                            Radius.circular(Get.height * .015))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: Get.width * .25,
                            child: Text(
                              'Choose priority',
                              style: TextStyle(
                                  color: AppColors().color,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            )),
                        SizedBox(
                          height: Get.height * .005,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: Get.height * .025,
                              width: Get.width * .06,
                              child: Checkbox(
                                checkColor: AppColors().color,
                                activeColor: AppColors().color3,
                                value: controller.basicCheck,
                                onChanged: (value) {
                                  controller.priorityCheck();
                                  controller.basicCheck = value!;
                                  controller.secondaryCheck = false;
                                  controller.entertainmentCheck = false;
                                },
                                shape: const CircleBorder(),
                              ),
                            ),
                            SizedBox(
                              width: Get.width * .2,
                              child: Text(
                                'Basic',
                                style: TextStyle(
                                    color: AppColors().color,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Icon(
                              Icons.star,
                              color: AppColors().color,
                            ),
                            Icon(
                              Icons.star,
                              color: AppColors().color,
                            ),
                            Icon(
                              Icons.star,
                              color: AppColors().color,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: Get.height * .005,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: Get.height * .025,
                              width: Get.width * .06,
                              child: Checkbox(
                                checkColor: AppColors().color,
                                activeColor: AppColors().color3,
                                value: controller.secondaryCheck,
                                onChanged: (bool? value) {
                                  controller.priorityCheck();
                                  controller.secondaryCheck = value!;
                                  controller.basicCheck = false;
                                  controller.entertainmentCheck = false;
                                },
                                shape: const CircleBorder(),
                              ),
                            ),
                            SizedBox(
                              width: Get.width * .2,
                              child: Text(
                                'Secondary',
                                style: TextStyle(
                                    color: AppColors().color,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Icon(
                              Icons.star,
                              color: AppColors().color,
                            ),
                            Icon(
                              Icons.star,
                              color: AppColors().color,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: Get.height * .005,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: Get.height * .025,
                              width: Get.width * .06,
                              child: Checkbox(
                                checkColor: AppColors().color,
                                activeColor: AppColors().color3,
                                value: controller.entertainmentCheck,
                                onChanged: (bool? value) {
                                  controller.priorityCheck();
                                  controller.basicCheck = false;
                                  controller.secondaryCheck = false;
                                  controller.entertainmentCheck = value!;
                                },
                                shape: const CircleBorder(),
                              ),
                            ),
                            SizedBox(
                              width: Get.width * .2,
                              child: Text(
                                'Entertainment',
                                style: TextStyle(
                                    color: AppColors().color,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Icon(
                              Icons.star,
                              color: AppColors().color,
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
              Positioned(
                  right: Get.width / 3.3,
                  top: Get.height * .7,
                  child: GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      alignment: AlignmentDirectional.center,
                      decoration: BoxDecoration(
                          color: AppColors().color4,
                          borderRadius: BorderRadius.all(
                              Radius.circular(Get.height * .1))),
                      width: Get.width * .4,
                      height: Get.height * .05,
                      child: Text(
                        'Done',
                        style: TextStyle(
                            color: AppColors().color1,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )),
            ]),
          ),
        );
      }),
    );
  }
}
