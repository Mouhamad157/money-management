import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../core/app_colors.dart';

class AddWallet extends StatelessWidget {
  const AddWallet({super.key});

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
                  'Add wallet',
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
                          'Wallet name : ',
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
                        decoration: const InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color:Colors.transparent))),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                height: Get.height*.01,),
                Row(
                  children: [
                    Container(
                        margin: EdgeInsetsDirectional.symmetric(
                            horizontal: Get.width * .03),
                        width: Get.width * .3,
                        child: Text(
                          'Initial amount : ',
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
                        decoration: const InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                BorderSide(color:Colors.transparent))),
                      ),
                    ),
                  ],
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
            ),
          ),
        ],
      ),
    ));
  }
}
