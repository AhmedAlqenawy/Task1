import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/shared/component/components.dart';
import 'package:task1/shared/constant/constant.dart';

import '../../shared/style/colors.dart';
import '../login/login_View.dart';
import '../registration/registtration.dart';

class OnBoardingView extends StatefulWidget {
  OnBoardingView({Key? key}) : super(key: key);

  @override
  _OnBoardingViewState createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  static const List<String> pages = [
    "assets/img/Delivery address-pana.png",
    "assets/img/Take Away-cuate.png",
    "assets/img/Credit card-amico.png",
  ];
  static const List<String> titles = [
    "Get food delivery to your doorstep asap ",
    "Buy any food from your favorite restaurant",
    "Easy to pay"
  ];
  static const List<String> discribtion = [
    "Get delivery from local favorite restaurants, liquor stores, grocery stores and laundromats near you. Order online for delivery or takeout.",
    "Order food and grocery delivery online from hundreds of restaurants and shops nearby.",
    "Pay Online on Any Local or International Websites with No Need for Credit Card or Bank Account."
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              space(16.h, 0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      navigateToAndReplacement(context, LoginView());
                    },
                    child: Container(
                      width: 60.w,
                      decoration: BoxDecoration(
                        color: const Color(0xffFBF4E9),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
                      child: Text("SKIP",
                          textScaleFactor: 1,
                          textAlign: TextAlign.center,
                          style:
                              openSans(12.sp, Colors.black, fontWeight.medium)),
                    ),
                  ),
                  space(0, 16.w),
                ],
              ),
              space(16.h, 0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "7",
                    textScaleFactor: 1,
                    style: openSans(
                        24.sp, const Color(0xffF1BD8B), fontWeight.bold),
                  ),
                  Text(
                    "Krave",
                    textScaleFactor: 1,
                    style: openSans(
                        24.sp, const Color(0xff74D1C7), fontWeight.bold),
                  ),
                ],
              ),
              space(24.h, 0),
              Container(
                width: 240.w,
                height: 350.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(pages[index]), fit: BoxFit.fill)),
              ),
              space(16.h, 0),
              SizedBox(
                width: 300.w,
                child: Text(
                  titles[index],
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  textScaleFactor: 1,
                  style: openSans(22.sp, Colors.black, fontWeight.bold),
                ),
              ),
              space(16.h, 0),
              SizedBox(
                width: 270.w,
                child: Text(
                  discribtion[index],
                  maxLines: 3,
                  textAlign: TextAlign.center,
                  textScaleFactor: 1,
                  style: openSans(
                      16.sp, const Color(0xffADADAD), fontWeight.medium),
                ),
              ),
              space(16.h, 0),
              SizedBox(
                width: 60.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    for (int i = 0; i < pages.length; i++)
                      line(
                          3.h,
                          12.w,
                          i == index
                              ? const Color(0xffDEBB87)
                              : const Color(0xffE9E9E9),
                          hasDecoration: true),
                  ],
                ),
              ),
              space(16.h, 0),
              index == pages.length - 1
                  ? mainButton(
                      onTap: () {
                        print("asd");
                        navigateToAndReplacement(context, const LoginView());
                      },
                      backgroundColor: mainColor,
                      text: "Get Started")
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        mainButton(
                            onTap: () {
                              print("asd");
                              if (index > 0) {
                                setState(() {
                                  index--;
                                });
                              }
                            },
                            text: "Previous",
                            backgroundColor: mainColor,
                            width: 120.w),
                        space(0, 32.w),
                        mainButton(
                            onTap: () {
                              print("asd2");
                              setState(() {
                                index++;
                              });
                            },
                            text: "Next",
                            backgroundColor: mainColor,
                            width: 120.w),
                      ],
                    ),
              space(16.h, 0),
              GestureDetector(
                onTap: () {
                  navigateToAndReplacement(context, const Registration());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account ?",
                        textScaleFactor: 1,
                        style:
                            openSans(14.sp, Colors.black, fontWeight.medium)),
                    space(0, 8.w),
                    Text("Sign Up",
                        textScaleFactor: 1,
                        style: openSans(14.sp, mainColor.withOpacity(.8),
                            fontWeight.medium)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
