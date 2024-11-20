import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:money_manager/modules/add_goals/add_goals_view.dart';

import '../../core/app_colors.dart';

class MyGoals extends StatelessWidget {
  const MyGoals({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      floatingActionButton: GestureDetector(
        onTap: () {
          Get.to(const AddGoals(),transition:  Transition.downToUp,duration: const Duration(milliseconds: 500));
        },
        child: Container(
          width: Get.width * .3,
          height: Get.height * .05,
          decoration: BoxDecoration(
            color: AppColors().color1,
            boxShadow: const [
              BoxShadow(spreadRadius: 1, blurRadius: 10, color: Colors.grey)
            ],
            borderRadius: BorderRadius.all(Radius.circular(Get.width * .02)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.add,
                color: AppColors().color4,
                size: Get.pixelRatio * 13,
              ),
              Text(
                'Add goal',
                style: TextStyle(
                    color: AppColors().color4,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
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
                      Icons.arrow_back,
                      color: AppColors().color3,
                      size: Get.pixelRatio * 13,
                    )),
                Text(
                  'My goals',
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
            bottom: 0,
            child: SizedBox(
              width: Get.width,
              height: Get.height,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsetsDirectional.symmetric(
                        vertical: Get.height * .01),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsetsDirectional.symmetric(
                              horizontal: Get.width * .03),
                          padding: EdgeInsetsDirectional.symmetric(
                              horizontal: Get.width * .02),
                          decoration: BoxDecoration(
                              color: AppColors().color3,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(Get.width * .02))),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: Get.width * .23,
                                    child: Text(
                                      'Goal name',
                                      style: TextStyle(
                                        color: AppColors().color4,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: Get.width * .08,
                                  ),
                                  SizedBox(
                                    width: Get.width * .4,
                                    height: Get.height * .06,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: AppColors().color4)),
                                          hintText: 'By a cat',
                                          hintStyle: TextStyle(
                                              color: AppColors().color4,
                                              fontSize: 20)),
                                    ),
                                  ),
                                  SizedBox(
                                    width: Get.width * .08,
                                  ),
                                ],
                              ),
                              Container(
                                width: Get.width * .8,
                                height: Get.height * .001,
                                color: AppColors().color1,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: Get.width * .23,
                                    child: Text(
                                      'Pay out',
                                      style: TextStyle(
                                        color: AppColors().color4,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: Get.width * .08,
                                  ),
                                  SizedBox(
                                    width: Get.width * .4,
                                    height: Get.height * .06,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: AppColors().color4)),
                                          hintText: '1,000,000',
                                          hintStyle: TextStyle(
                                              color: AppColors().color4,
                                              fontSize: 20)),
                                    ),
                                  ),
                                  SizedBox(
                                    width: Get.width * .08,
                                  ),
                                ],
                              ),
                              Container(
                                width: Get.width * .8,
                                height: Get.height * .001,
                                color: AppColors().color1,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: Get.width * .23,
                                    child: Text(
                                      'Date',
                                      style: TextStyle(
                                        color: AppColors().color4,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: Get.width * .08,
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        width: Get.width * .4,
                                        height: Get.height * .06,
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: AppColors()
                                                              .color4)),
                                              hintText:
                                                  'Start                       19/2/2023',
                                              hintStyle: TextStyle(
                                                color: AppColors().color4,
                                                fontSize: 15,
                                              )),
                                        ),
                                      ),
                                      SizedBox(
                                        width: Get.width * .4,
                                        height: Get.height * .06,
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: AppColors()
                                                              .color4)),
                                              hintText:
                                                  'End                         19/9/2023',
                                              hintStyle: TextStyle(
                                                  color: AppColors().color4,
                                                  fontSize: 15)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: Get.width * .08,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    ));
  }
}
