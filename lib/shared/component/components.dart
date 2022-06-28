import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/shared/style/colors.dart';

import '../constant/constant.dart';

void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );

Future<void> navigateToAndFinish(context, widget) =>
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => widget,
        ), (Route<dynamic> route) {
      return false;
    });

void navigateToAndReplacement(context, widget) => Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );

space(double h, double w) {
  return SizedBox(
    height: h,
    width: w,
  );
}

line(h, w, color, {hasDecoration = false, buttonPadding = 0.0}) {
  return hasDecoration == true
      ? Container(
          width: w,
          height: h,
          padding: EdgeInsets.only(bottom: buttonPadding),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.w),
            color: color,
          ),
        )
      : Container(
          width: w,
          height: h,
          color: color,
        );
}

Widget dot(h, w, color) {
  return Container(
    height: h,
    width: w,
    decoration: BoxDecoration(shape: BoxShape.circle, color: color),
  );
}

mainButton(
    {required void Function() onTap,
    required Color backgroundColor,
    required String text,
    double width = double.maxFinite,
    hasMargin = true}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 45.h,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8.r),
      ),
      margin: EdgeInsets.symmetric(horizontal: hasMargin ? 16.w : 0),
      child: Center(
        child: Text(text,
            textScaleFactor: 1,
            style: openSans(18.sp, Colors.white, fontWeight.medium)),
      ),
    ),
  );
}

googleButton(
    {required void Function() onTap, required String text, hasMargin = true}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 45.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: mainColor),
        borderRadius: BorderRadius.circular(8.r),
      ),
      margin: EdgeInsets.symmetric(horizontal: hasMargin ? 16.w : 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 40.w,
            height: 20.h,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/img/google.png"),
            )),
          ),
          Text(text,
              textScaleFactor: 1,
              style: openSans(18.sp, mainColor, fontWeight.medium)),
        ],
      ),
    ),
  );
}
