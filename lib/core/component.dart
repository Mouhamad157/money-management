import 'package:flutter/cupertino.dart';

// ignore: non_constant_identifier_names
Widget CustomButton(
        {required navigator,
        required buttonName,
        required alignment,
        required height,
        required width,
        required decoration}) =>
    GestureDetector(
      onTap: navigator,
      child: Container(
        height: height,
        width: width,
        alignment: alignment,
        decoration: decoration,
        child: buttonName,
      ),
    );
