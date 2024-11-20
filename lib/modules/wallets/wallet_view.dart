import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:money_manager/modules/add/add_view.dart';
import 'package:money_manager/modules/add_wallet/add_wallet_view.dart';
import 'package:money_manager/modules/wallets/wallet_controller.dart';

import '../../core/app_colors.dart';

class Wallets extends GetView<WalletController> {
  const Wallets({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(WalletController());
    return SafeArea(
      child: GetBuilder<WalletController>(builder: (_) {
        Get.put(WalletController());
        return Scaffold(
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
                padding: EdgeInsetsDirectional.symmetric(
                    horizontal: Get.width * .02),
                height: Get.height * .05,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Wallets',
                      style: TextStyle(
                          color: AppColors().color3,
                          fontSize: Get.height * .02),
                    ),
                    IconButton(
                        onPressed: () {
                          Get.to(const AddWallet(),transition: Transition.upToDown);
                        },
                        icon: Icon(
                          size: Get.height * .03,
                          Icons.add,
                          color: AppColors().color3,
                        ))
                  ],
                ),
              ),
              Positioned(
                top: Get.height * .08,
                left: Get.width * .06,
                child: Text(
                  'Total balance',
                  style: TextStyle(
                      color: AppColors().color4, fontSize: Get.height * .02),
                ),
              ),
              Positioned(
                top: Get.height * .12,
                left: Get.width * .3,
                child: Container(
                  alignment: AlignmentDirectional.center,
                  height: Get.height * .04,
                  width: Get.width * .4,
                  decoration: BoxDecoration(
                    color: AppColors().color1,
                    boxShadow: [
                      BoxShadow(
                          color: AppColors().color3,
                          spreadRadius: 2,
                          blurRadius: 3)
                    ],
                    borderRadius:
                        BorderRadius.all(Radius.circular(Get.height * .04)),
                  ),
                  child: Text(
                    '1,000,000',
                    style: TextStyle(color: AppColors().color, fontSize: 20),
                  ),
                ),
              ),
              Positioned(
                top: Get.height * .2,
                left: 0,
                right: 0,
                child: Container(
                  margin: EdgeInsetsDirectional.symmetric(
                      horizontal: Get.width * .03),
                  decoration: BoxDecoration(
                    color: AppColors().color3,
                    boxShadow: [
                      BoxShadow(
                          color: AppColors().color3,
                          spreadRadius: 2,
                          blurRadius: 3)
                    ],
                    borderRadius:
                        BorderRadius.all(Radius.circular(Get.height * .02)),
                  ),
                  child: Column(children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/money (6).svg',
                          height: Get.height * .05,
                        ),
                        SizedBox(
                          width: Get.width * .05,
                        ),
                        Text(
                          'Month Expense',
                          style: TextStyle(
                              color: AppColors().color4,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: Get.height * .02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          alignment: AlignmentDirectional.center,
                          child: Text(
                            '1,000,000',
                            style: TextStyle(
                                color: AppColors().color4,
                                fontSize: Get.height * .04),
                          ),
                        ),
                        Text(
                          'SYP',
                          style: TextStyle(color: AppColors().color4),
                        )
                      ],
                    ),
                    SizedBox(
                      height: Get.height * .02,
                    ),
                    Container(
                      alignment: AlignmentDirectional.bottomEnd,
                      width: Get.width,
                      child: IconButton(
                        onPressed: () {
                          Get.to(const Add(),transition: Transition.downToUp);
                        },
                        icon: Icon(
                          Icons.add,
                          color: AppColors().color4,
                          size: Get.size.height * .03,
                        ),
                      ),
                    )
                  ]),
                ),
              ),
              Positioned(
                top: Get.height * .4,
                left: 0,
                right: 0,
                child: Container(
                  margin: EdgeInsetsDirectional.symmetric(
                      horizontal: Get.width * .03),
                  decoration: BoxDecoration(
                    color: AppColors().color3,
                    boxShadow: [
                      BoxShadow(
                          color: AppColors().color3,
                          spreadRadius: 2,
                          blurRadius: 3)
                    ],
                    borderRadius:
                        BorderRadius.all(Radius.circular(Get.height * .02)),
                  ),
                  child: Column(children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/credit-card.svg',
                          height: Get.height * .05,
                        ),
                        SizedBox(
                          width: Get.width * .05,
                        ),
                        Text(
                          'Bank account',
                          style: TextStyle(
                              color: AppColors().color4,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: Get.height * .02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          alignment: AlignmentDirectional.center,
                          child: Text(
                            '1,000,000,00',
                            style: TextStyle(
                                color: AppColors().color4,
                                fontSize: Get.height * .04),
                          ),
                        ),
                        Text(
                          'SYP',
                          style: TextStyle(color: AppColors().color4),
                        )
                      ],
                    ),
                    SizedBox(
                      height: Get.height * .02,
                    ),
                    Container(
                      alignment: AlignmentDirectional.bottomEnd,
                      width: Get.width,
                      child: IconButton(
                        onPressed: () {
                          Get.to(const Add(),transition: Transition.downToUp);
                        },
                        icon: Icon(
                          Icons.add,
                          color: AppColors().color4,
                          size: Get.size.height * .03,
                        ),
                      ),
                    )
                  ]),
                ),
              ),
              Positioned(
                top: Get.height * .6,
                left: 0,
                right: 0,
                child: Container(
                  margin: EdgeInsetsDirectional.symmetric(
                      horizontal: Get.width * .03),
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.transparent,
                          spreadRadius: 2,
                          blurRadius: 3)
                    ],
                    borderRadius:
                        BorderRadius.all(Radius.circular(Get.height * .02)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('The budget available for each priority',
                          style: TextStyle(
                            color: AppColors().color4,fontSize: Get.size.height*.02,fontWeight: FontWeight.bold
                          ),),
                      SizedBox(
                        height: Get.height*.01,),
                      Row(
                        children: [
                          Text(
                            'Basic',
                            style: TextStyle(
                                fontSize: 25,
                                color: AppColors().color,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: Get.width * .18,
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
                          SizedBox(
                            width: Get.width * .06,
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
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                            ),
                            child: Text(
                              '100000',
                              style: TextStyle(
                                  fontSize: 15, color: AppColors().color),
                            ),
                          ),
                        ],
                      ).marginSymmetric(vertical: Get.height * .01),
                      Row(
                        children: [
                          Text(
                            'Secondary',
                            style: TextStyle(
                                fontSize: 25,
                                color: AppColors().color,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: Get.width * .06,
                          ),
                          Icon(
                            Icons.star,
                            color: AppColors().color,
                          ),
                          Icon(
                            Icons.star,
                            color: AppColors().color,
                          ),
                          SizedBox(
                            width: Get.width * .11,
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
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                            ),
                            child: Text(
                              '100000',
                              style: TextStyle(
                                  fontSize: 15, color: AppColors().color),
                            ),
                          ),
                        ],
                      ).marginSymmetric(vertical: Get.height * .01),
                      Row(
                        children: [
                          Text(
                            'Entertaining',
                            style: TextStyle(
                                fontSize: 25,
                                color: AppColors().color,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: Get.width * .02,
                          ),
                          Icon(
                            Icons.star,
                            color: AppColors().color,
                          ),
                          SizedBox(
                            width: Get.width * .16,
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
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                            ),
                            child: Text(
                              '100000',
                              style: TextStyle(
                                  fontSize: 15, color: AppColors().color),
                            ),
                          ),
                        ],
                      ).marginSymmetric(vertical: Get.height * .01),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
