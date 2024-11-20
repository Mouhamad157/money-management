import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../core/app_colors.dart';

class Add extends StatelessWidget {
  const Add({super.key});

  @override
  Widget build(BuildContext context) {
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
                    'Add',
                    style: TextStyle(
                        color: AppColors().color3, fontSize: Get.height * .02),
                  ),
                ],
              ),
            ),
            Positioned(
                top: Get.height * .1,
                child: Container(
                    padding: EdgeInsetsDirectional.symmetric(
                        horizontal: Get.width * .05),
                    width: Get.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Add an amount',
                          style: TextStyle(
                              color: AppColors().color4,
                              fontWeight: FontWeight.bold,
                              fontSize: Get.size.height * .02),
                        ),
                        SizedBox(
                          height: Get.height * .02,
                        ),
                        Container(
                          alignment: AlignmentDirectional.center,
                          height: Get.height * .05,
                          width: Get.width,
                          margin: EdgeInsetsDirectional.symmetric(
                              horizontal: Get.width * .25),
                          decoration: BoxDecoration(
                              color: AppColors().color3,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(Get.width * .03))),
                          child: Text(
                            '1,000,000',
                            style: TextStyle(
                                color: AppColors().color4,
                                fontSize: Get.size.height * .02,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: Get.height * .02,
                        ),
                        Text(
                          'Determine the percntage of each priority',
                          style: TextStyle(
                              color: AppColors().color4,
                              fontSize: Get.size.height * .02,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: Get.height * .02,
                        ),
                        Container(
                          padding: EdgeInsetsDirectional.all(Get.height*.02),
                          decoration: BoxDecoration(
                          color: AppColors().color3,
                          borderRadius: BorderRadius.all(Radius.circular(Get.width*.03))
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    width: Get.width*.18,
                                    child: Text(
                                      'Basic',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: AppColors().color,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    width: Get.width*.15,
                                    child: Row(children: [
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
                                    ],),
                                  ),
                                  Container(
                                    alignment: AlignmentDirectional.center,
                                    height: Get.height * .03,
                                    width: Get.width * .1,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            spreadRadius: Get.height * .001,
                                            blurRadius: Get.height * .02,
                                            blurStyle: BlurStyle.outer,
                                            color: Colors.grey)
                                      ],
                                      color: AppColors().color1,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(5)),
                                    ),
                                    child: Text(
                                      '30%',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: AppColors().color),
                                    ),
                                  ),
                                  Container(
                                    alignment: AlignmentDirectional.center,
                                    height: Get.height * .03,
                                    width: Get.width * .3,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            spreadRadius: Get.height * .001,
                                            blurRadius: Get.height * .02,
                                            blurStyle: BlurStyle.outer,
                                            color: Colors.grey)
                                      ],
                                      color: AppColors().color1,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(5)),
                                    ),
                                    child: Text(
                                      '100000',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: AppColors().color),
                                    ),
                                  ),
                                ],
                              ).marginSymmetric(vertical: Get.height * .01),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    width: Get.width*.18,
                                    child: Text(
                                      'Secondary',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: AppColors().color,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    width: Get.width*.15,
                                    child: Row(
                                      children: [
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
                                  ),
                                  Container(
                                    alignment: AlignmentDirectional.center,
                                    height: Get.height * .03,
                                    width: Get.width * .1,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            spreadRadius: Get.height * .001,
                                            blurRadius: Get.height * .02,
                                            blurStyle: BlurStyle.outer,
                                            color: Colors.grey)
                                      ],
                                      color: AppColors().color1,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(5)),
                                    ),
                                    child: Text(
                                      '20%',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: AppColors().color),
                                    ),
                                  ),
                                  Container(
                                    alignment: AlignmentDirectional.center,
                                    height: Get.height * .03,
                                    width: Get.width * .3,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            spreadRadius: Get.height * .001,
                                            blurRadius: Get.height * .02,
                                            blurStyle: BlurStyle.outer,
                                            color: Colors.grey)
                                      ],
                                      color: AppColors().color1,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(5)),
                                    ),
                                    child: Text(
                                      '100000',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: AppColors().color),
                                    ),
                                  ),
                                ],
                              ).marginSymmetric(vertical: Get.height * .01),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    width: Get.width*.18,
                                    child: Text(
                                      'Entertaining',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: AppColors().color,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    alignment: AlignmentDirectional.topStart,
                                    width: Get.width*.15,
                                    child: Icon(
                                      Icons.star,
                                      color: AppColors().color,
                                    ),
                                  ),
                                  Container(
                                    alignment: AlignmentDirectional.center,
                                    height: Get.height * .03,
                                    width: Get.width * .1,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            spreadRadius: Get.height * .001,
                                            blurRadius: Get.height * .02,
                                            blurStyle: BlurStyle.outer,
                                            color: Colors.grey)
                                      ],
                                      color: AppColors().color1,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(5)),
                                    ),
                                    child: Text(
                                      '50%',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: AppColors().color),
                                    ),
                                  ),
                                  Container(
                                    alignment: AlignmentDirectional.center,
                                    height: Get.height * .03,
                                    width: Get.width * .3,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            spreadRadius: Get.height * .001,
                                            blurRadius: Get.height * .02,
                                            blurStyle: BlurStyle.outer,
                                            color: Colors.grey)
                                      ],
                                      color: AppColors().color1,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(5)),
                                    ),
                                    child: Text(
                                      '100000',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: AppColors().color),
                                    ),
                                  ),
                                ],
                              ).marginSymmetric(vertical: Get.height * .01),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: Get.height*.05,),
                        GestureDetector(
                          onTap: (){Get.back();},
                          child: Container(
                            alignment: AlignmentDirectional.center,
                            height: Get.height * .04,
                            width: Get.width,
                            margin: EdgeInsetsDirectional.symmetric(horizontal: Get.width*.25),
                            decoration: BoxDecoration(
                              color: AppColors().color4,
                              borderRadius:  BorderRadius.all(
                                  Radius.circular(Get.width*.1)),
                            ),
                            child: Text(
                              'Done',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: AppColors().color1,fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ))),
          ],
        ),
      ),
    );
  }
}
