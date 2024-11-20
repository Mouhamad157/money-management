// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:money_manager/core/app_colors.dart';
import 'package:money_manager/modules/add_transactions/view.dart';
import 'package:money_manager/modules/home/controller.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Home extends GetView<HomeController> {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return SafeArea(
      child: GetBuilder<HomeController>(builder: (_) {
        return Scaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: AppColors().color1,
          floatingActionButton: GestureDetector(
            onTap: () {
              Get.to(const AddTransactions(), transition: Transition.downToUp);
            },
            child: Container(
              height: Get.height * .055,
              width: Get.width * .12,
              decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        spreadRadius: 1, blurRadius: 4, color: Colors.grey)
                  ],
                  borderRadius: const BorderRadius.all(Radius.circular(100)),
                  color: AppColors().color1),
              child: Icon(
                Icons.add,
                color: AppColors().color4,
              ),
            ),
          ),
          body: SizedBox(
            height: Get.height,
            child: Stack(
              children: [
                Container(
                  width: Get.width,
                  height: Get.height * .05,
                  color: AppColors().color4,
                ),
                Container(
                  alignment: AlignmentDirectional.topStart,
                  width: Get.width,
                  height: Get.height * .2,
                  decoration: BoxDecoration(
                      color: AppColors().color4,
                      borderRadius:
                          BorderRadius.all(Radius.circular(Get.width * .05))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PopupMenuButton(
                        itemBuilder: (context) {
                          return [
                            PopupMenuItem(
                              onTap: () {
                                controller.update();
                                controller.selectedItem = controller.syp;
                              },
                              child: Text(controller.syp),
                            ),
                            PopupMenuItem(
                              onTap: () {
                                controller.update();
                                controller.selectedItem = controller.eup;
                              },
                              child: Text(controller.eup),
                            ),
                            PopupMenuItem(
                              onTap: () {
                                controller.update();
                                controller.selectedItem = controller.usd;
                              },
                              child: Text(controller.usd),
                            ),
                          ];
                        },
                        child: Row(
                          children: [
                            Icon(
                              size: Get.height * .03,
                              Icons.arrow_drop_down,
                              color: AppColors().color3,
                            ),
                            Text(
                              controller.selectedItem,
                              style: TextStyle(
                                  color: AppColors().color3,
                                  fontSize: Get.height * .015),
                            )
                          ],
                        ),
                      ),
                      Text(
                        'Money Manager',
                        style: TextStyle(color: AppColors().color3),
                      )
                    ],
                  ),
                ),
                Positioned(
                  height: Get.height * .05,
                  top: Get.height * .07,
                  left: Get.width * .15,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          controller.containerColorChanger();
                        },
                        child: SizedBox(
                          height: Get.height * .03,
                          child: Column(
                            children: [
                              Text(
                                'Statistics',
                                style: TextStyle(
                                    color: AppColors().color3, fontSize: 20),
                              ),
                              AnimatedContainer(
                                curve: Curves.linearToEaseOut,
                                width: Get.width * .3,
                                height: Get.height * .007,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(Get.width * 1)),
                                    color: controller.isChecked
                                        ? controller.color2
                                        : controller.color),
                                duration: const Duration(milliseconds: 700),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Get.width * .08,
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.containerColorChanger();
                        },
                        child: SizedBox(
                          height: Get.height * .03,
                          child: Column(
                            children: [
                              Text(
                                'Transaction',
                                style: TextStyle(
                                    color: AppColors().color3, fontSize: 20),
                              ),
                              AnimatedContainer(
                                width: Get.width * .3,
                                height: Get.height * .007,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(Get.width * 1)),
                                    color: controller.isNotChecked
                                        ? controller.color2
                                        : controller.color),
                                duration: const Duration(milliseconds: 700),
                                curve: Curves.linearToEaseOut,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: Get.height * 0,
                  top: Get.height * .11,
                  child: Container(
                    height: Get.height,
                    width: Get.width,
                    decoration: BoxDecoration(
                        color: AppColors().color1,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(Get.width * .1),
                            topRight: Radius.circular(Get.width * .1))),
                    child: AnimatedCrossFade(
                      firstCurve: Curves.linear,
                      excludeBottomFocus: false,
                      crossFadeState: controller.isChecked
                          ? CrossFadeState.showFirst
                          : CrossFadeState.showSecond,
                      duration: const Duration(milliseconds: 500),
                      firstChild: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(children: [
                          SizedBox(
                            height: Get.height * .5,
                            child: SfCircularChart(
                                title: ChartTitle(
                                    alignment: ChartAlignment.center,
                                    text: 'This month statistics',
                                    textStyle:
                                        TextStyle(color: AppColors().color4,fontWeight: FontWeight.bold)),
                                legend: const Legend(
                                  isVisible: true,
                                  position: LegendPosition.bottom,
                                  iconWidth: 20,
                                  orientation: LegendItemOrientation.horizontal,
                                  iconHeight: 20,
                                ),
                                palette: [
                                  AppColors().color,
                                  AppColors().color2,
                                  AppColors().color3,
                                ],
                                margin: const EdgeInsets.all(9),
                                series: <PieSeries<_PieData, String>>[
                                  PieSeries<_PieData, String>(
                                    explode: true,
                                    xValueMapper: (_PieData data, _) =>
                                        data.xData,
                                    yValueMapper: (_PieData data, _) =>
                                        data.yData,
                                    dataLabelMapper: (_PieData data, _) =>
                                        data.text,
                                    dataSource: [
                                      _PieData('Total income', 60, '60% '),
                                      _PieData('Current balance', 10, '10% '),
                                      _PieData('Expense', 30, '30%')
                                    ],
                                    dataLabelSettings: const DataLabelSettings(
                                      useSeriesColor: true,
                                      labelPosition:
                                          ChartDataLabelPosition.outside,
                                      textStyle: TextStyle(
                                          fontSize: 12, color: Colors.black),
                                      overflowMode: OverflowMode.hide,
                                      isVisible: true,
                                    ),
                                  ),
                                ]),
                          ),
                          SizedBox(
                            width: Get.width,
                            height: Get.height * .07,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Total income',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: AppColors().color4),
                                    ),
                                    SizedBox(
                                      height: Get.height * .015,
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
                                            color: AppColors().color4),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Current balance',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: AppColors().color4),
                                    ),
                                    SizedBox(
                                      height: Get.height * .015,
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
                                            color: AppColors().color4),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Expense',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: AppColors().color4),
                                    ),
                                    SizedBox(
                                      height: Get.height * .015,
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
                                            color: AppColors().color4),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            alignment: AlignmentDirectional.topStart,
                            padding: EdgeInsetsDirectional.all(Get.width * .05),
                            margin: EdgeInsetsDirectional.all(Get.width * .04),
                            decoration: BoxDecoration(
                                color: AppColors().color3,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(Get.width * .1))),
                            width: Get.width,
                            height: Get.height * .28,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Priorities',
                                  style: TextStyle(
                                      color: AppColors().color4,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                                Text(
                                    'Distinguishing the importance of transactions based on the extent of their need, determined through the sections of the transactions screen',
                                    style: TextStyle(
                                        color: AppColors().color4,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15)),
                                Row(
                                  children: [
                                    Text(
                                      'Basic',
                                      style: TextStyle(
                                          fontSize: 25,
                                          color: AppColors().color4,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: Get.width * .18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: AppColors().color4,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: AppColors().color4,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: AppColors().color4,
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
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(5)),
                                      ),
                                      child: Text(
                                        '100000',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: AppColors().color4),
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
                                          color: AppColors().color4,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: Get.width * .06,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: AppColors().color4,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: AppColors().color4,
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
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(5)),
                                      ),
                                      child: Text(
                                        '100000',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: AppColors().color4),
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
                                          color: AppColors().color4,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: Get.width * .02,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: AppColors().color4,
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
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(5)),
                                      ),
                                      child: Text(
                                        '100000',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: AppColors().color4),
                                      ),
                                    ),
                                  ],
                                ).marginSymmetric(vertical: Get.height * .01),
                              ],
                            ),
                          ),
                          Container(
                            alignment: AlignmentDirectional.topStart,
                            padding: EdgeInsetsDirectional.all(Get.width * .05),
                            margin: EdgeInsetsDirectional.all(Get.width * .04),
                            decoration: BoxDecoration(
                                color: AppColors().color3,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(Get.width * .1))),
                            width: Get.width,
                            height: Get.height * .22,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Exchange Items',
                                  style: TextStyle(
                                      color: AppColors().color4,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                                Text('The highest spending departments',
                                    style: TextStyle(
                                        color: AppColors().color4,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsetsDirectional.all(
                                          Get.height * .005),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                  Get.width * 0.01))),
                                      child: SvgPicture.asset(
                                          'assets/education.svg',
                                          height: Get.height * .04),
                                    ),
                                    SizedBox(
                                      width: Get.width * .015,
                                    ),
                                    Text(
                                      'Education',
                                      style: TextStyle(
                                          fontSize: 25,
                                          color: AppColors().color4,
                                          fontWeight: FontWeight.bold),
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
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(5)),
                                      ),
                                      child: Text(
                                        '100000',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: AppColors().color4),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsetsDirectional.all(
                                          Get.height * .005),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                  Get.width * 0.01))),
                                      child: SvgPicture.asset(
                                          'assets/fast-food.svg',
                                          height: Get.height * .04),
                                    ),
                                    SizedBox(
                                      width: Get.width * .01,
                                    ),
                                    Text(
                                      'Food',
                                      style: TextStyle(
                                          fontSize: 25,
                                          color: AppColors().color4,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: Get.width * .28,
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
                                            color: AppColors().color4),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            alignment: AlignmentDirectional.topStart,
                            padding: EdgeInsetsDirectional.all(Get.width * .05),
                            margin: EdgeInsetsDirectional.all(Get.width * .04),
                            decoration: BoxDecoration(
                                color: AppColors().color3,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(Get.width * .1))),
                            width: Get.width,
                            height: Get.height * .20,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Revenue Sources',
                                  style: TextStyle(
                                      color: AppColors().color4,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                                Text('The highest income departments',
                                    style: TextStyle(
                                        color: AppColors().color4,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsetsDirectional.all(
                                          Get.height * .005),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                  Get.width * 0.01))),
                                      child: SvgPicture.asset(
                                          'assets/salary.svg',
                                          height: Get.height * .04),
                                    ),
                                    SizedBox(
                                      width: Get.width * .015,
                                    ),
                                    Text(
                                      'Education',
                                      style: TextStyle(
                                          fontSize: 25,
                                          color: AppColors().color4,
                                          fontWeight: FontWeight.bold),
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
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(5)),
                                      ),
                                      child: Text(
                                        '100000',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: AppColors().color4),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ),
                      secondChild: SingleChildScrollView(
                        child: SizedBox(
                          height: Get.height * 1.5,
                          child: Column(
                            children: [
                              SizedBox(
                                height: Get.height * .03,
                              ),
                              SizedBox(
                                height: Get.height * .1,
                                child: ListView.builder(
                                    physics: const BouncingScrollPhysics(),
                                    itemCount: 6,
                                    padding: EdgeInsetsDirectional.all(
                                        Get.width * .001),
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, _) {
                                      return Container(
                                        margin: EdgeInsetsDirectional.all(
                                            Get.width * .02),
                                        decoration: BoxDecoration(
                                            boxShadow: const [
                                              BoxShadow(
                                                  blurRadius: 6,
                                                  spreadRadius: 2,
                                                  color: Colors.grey)
                                            ],
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(
                                              Get.height * .01,
                                            ))),
                                        width: Get.width * .25,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text('Today',
                                                style: TextStyle(
                                                  color: AppColors().color4,
                                                )),
                                            Text('0.00',
                                                style: TextStyle(
                                                    color: AppColors().color4,
                                                    fontSize: 25))
                                          ],
                                        ),
                                      );
                                    }),
                              ),
                              SizedBox(
                                height: Get.height * .03,
                              ),
                              Container(
                                margin: const EdgeInsetsDirectional.all(10),
                                padding: const EdgeInsetsDirectional.all(10),
                                height: Get.height * .12,
                                width: Get.width,
                                decoration: BoxDecoration(
                                    color: AppColors().color3,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(Get.width * .05))),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Current balance',
                                      style: TextStyle(
                                          color: AppColors().color4,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: Get.height * .03,
                                    ),
                                    Container(
                                      margin: EdgeInsetsDirectional.symmetric(
                                          horizontal: Get.width * .15),
                                      alignment: AlignmentDirectional.center,
                                      height: Get.height * .03,
                                      width: Get.width,
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
                                            Radius.circular(50)),
                                      ),
                                      child: Text(
                                        '1,000,000,000',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: AppColors().color4),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: Get.height * 1.2,
                                child: ListView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: 1,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Container(
                                      margin:
                                          const EdgeInsetsDirectional.all(10),
                                      padding:
                                          const EdgeInsetsDirectional.all(10),
                                      width: Get.width,
                                      decoration: BoxDecoration(
                                          color: AppColors().color3,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                  Get.width * .05))),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Friday',
                                                    style: TextStyle(
                                                        fontSize: 30,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            AppColors().color4),
                                                  ),
                                                  Text(
                                                    '10 / 9 / 2023',
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color:
                                                            AppColors().color4),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                width: Get.width * .54,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Text(
                                                    controller.selectedItem,
                                                    style: TextStyle(
                                                        color:
                                                            AppColors().color4),
                                                  ),
                                                  Text(
                                                    '0,00',
                                                    style: TextStyle(
                                                        color:
                                                            AppColors().color4),
                                                  ),
                                                  Text(
                                                    '1,000,000',
                                                    style: TextStyle(
                                                        color:
                                                            AppColors().color4),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Container(
                                            margin:
                                                EdgeInsetsDirectional.symmetric(
                                                    vertical: Get.height * .01),
                                            height: 1,
                                            color: Colors.white,
                                          ),
                                          ListView.builder(
                                            shrinkWrap: true,
                                            itemCount: 1,
                                            physics:
                                                const NeverScrollableScrollPhysics(),
                                            itemBuilder: (BuildContext context,
                                                int index) {
                                              return Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical:
                                                        Get.height * .004),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .all(Get.height *
                                                                  .005),
                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius.circular(
                                                                      Get.width *
                                                                          0.01))),
                                                      child: SvgPicture.asset(
                                                          'assets/education.svg',
                                                          height:
                                                              Get.height * .03),
                                                    ),
                                                    SizedBox(
                                                      width: Get.width * .02,
                                                    ),
                                                    Text(
                                                      'Education',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          color:
                                                              AppColors().color4,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      width: Get.width * .32,
                                                    ),
                                                    Container(
                                                      alignment:
                                                          AlignmentDirectional
                                                              .center,
                                                      height: Get.height * .03,
                                                      width: Get.width * .3,
                                                      decoration: BoxDecoration(
                                                        boxShadow: [
                                                          BoxShadow(
                                                              spreadRadius:
                                                                  Get.height *
                                                                      .001,
                                                              blurRadius:
                                                                  Get.height *
                                                                      .02,
                                                              blurStyle:
                                                                  BlurStyle
                                                                      .outer,
                                                              color:
                                                                  Colors.grey)
                                                        ],
                                                        color:
                                                            AppColors().color1,
                                                        borderRadius:
                                                            const BorderRadius
                                                                    .all(
                                                                Radius.circular(
                                                                    5)),
                                                      ),
                                                      child: Text(
                                                        '100000',
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            color: AppColors()
                                                                .color4),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          )
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}

class _PieData {
  String xData = 'die';
  num yData = 20;
  String text = 'death';

  _PieData(this.xData, this.yData, this.text);
}
