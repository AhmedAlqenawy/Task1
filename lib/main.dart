import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:task1/view/onBoarding/onboarding_view.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        builder: (context, child) => MaterialApp(
          title: '7Krave',
          debugShowCheckedModeBanner: false,
          home: OnBoardingView(),
        ),
      ),
    );
  }
}
