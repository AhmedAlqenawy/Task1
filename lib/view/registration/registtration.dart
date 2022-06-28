import 'package:country_picker/country_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/shared/component/components.dart';
import 'package:task1/shared/constant/constant.dart';
import '../../shared/style/colors.dart';
import '../login/login_View.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  Country? selectedCountry;
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passFocusNode = FocusNode();
  String phone = "", email = "", pass = "";
  bool isObscure = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 170.h, //"login-amico.png
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/img/login-amico.png"),
                    fit: BoxFit.fill),
              ),
              width: double.maxFinite,
            ),
            space(24.h, 0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "welcome to fashion daily",
                    textScaleFactor: 1,
                    style: openSans(14.sp, Colors.black, fontWeight.medium),
                  ),
                  space(32.h, 0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Registration",
                        textScaleFactor: 1,
                        style: openSans(26.sp, Colors.black, fontWeight.black),
                      ),
                      Row(
                        children: [
                          Text("help",
                              textScaleFactor: 1,
                              style: openSans(
                                  16.sp, mainColor, fontWeight.medium)),
                          space(0, 4.w),
                          Container(
                            width: 20.w,
                            height: 20.h,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: mainColor,
                            ),
                            child: Center(
                              child: Text("?",
                                  textScaleFactor: 1,
                                  style: openSans(
                                      16.sp, Colors.white, fontWeight.medium)),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  space(16.h, 0),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: Text(
                      "Email",
                      textScaleFactor: 1,
                      style: openSans(14.sp, Colors.black, fontWeight.regular),
                    ),
                  ),
                  space(8.h, 0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          height: 40.h,
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.w, vertical: 11.h),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12),
                              borderRadius: BorderRadius.circular(8.r),
                              color: const Color(0xffF8F8F6)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: TextFormField(
                                  style: openSans(
                                      14.sp, Colors.black, fontWeight.regular),
                                  decoration: InputDecoration(
                                      isDense: true,
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      contentPadding: EdgeInsets.zero,
                                      disabledBorder: InputBorder.none,
                                      hintText: 'Ex : example@gmail.com',
                                      hintStyle: openSans(
                                          12.sp,
                                          const Color(0xffADADAD),
                                          fontWeight.regular)),
//                                      controller: _comController,
                                  focusNode: _emailFocusNode,
                                  keyboardType: TextInputType.emailAddress,
                                  onChanged: (value) {
                                    setState(() {
                                      email = value;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  space(16.h, 0),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: Text(
                      "Phone Number",
                      textScaleFactor: 1,
                      style: openSans(14.sp, Colors.black, fontWeight.regular),
                    ),
                  ),
                  space(8.h, 0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          height: 40.h,
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.w, vertical: 11.h),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12),
                              borderRadius: BorderRadius.circular(8.r),
                              color: const Color(0xffF8F8F6)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  showCountryPicker(
                                      context: context,
                                      showPhoneCode: true,
                                      onSelect: (Country country) {
                                        setState(() {
                                          selectedCountry = country;
                                        });
                                      });
                                },
                                child: Text(
                                  selectedCountry == null
                                      ? "+961"
                                      : "+${selectedCountry!.phoneCode}",
                                  style: openSans(
                                      14.sp, Colors.black, FontWeight.w500),
                                ),
                              ),
                              SizedBox(
                                width: 16.w,
                              ),
                              Expanded(
                                child: TextFormField(
                                  style: openSans(
                                      14.sp, Colors.black, fontWeight.regular),
                                  decoration: InputDecoration(
                                      isDense: true,
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      contentPadding: EdgeInsets.zero,
                                      disabledBorder: InputBorder.none,
                                      hintText: 'phone number',
                                      hintStyle: openSans(
                                          12.sp,
                                          const Color(0xffADADAD),
                                          fontWeight.regular)),
                                  keyboardType: TextInputType.phone,
                                  onChanged: (value) {
                                    setState(() {
                                      phone = value;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  space(16.h, 0),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: Text(
                      "Password",
                      textScaleFactor: 1,
                      style: openSans(14.sp, Colors.black, fontWeight.regular),
                    ),
                  ),
                  space(8.h, 0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          height: 40.h,
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.w, vertical: 11.h),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12),
                              borderRadius: BorderRadius.circular(8.r),
                              color: const Color(0xffF8F8F6)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: TextFormField(
                                  style: openSans(
                                      14.sp, Colors.black, fontWeight.regular),
                                  decoration: InputDecoration(
                                    isDense: true,
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    contentPadding: EdgeInsets.zero,
                                    disabledBorder: InputBorder.none,
                                    hintText: 'password',
                                    hintStyle: openSans(
                                        12.sp,
                                        const Color(0xffADADAD),
                                        fontWeight.regular),
                                    suffixIcon: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          isObscure = !isObscure;
                                        });
                                      },
                                      child: Container(
                                        width: 15.w,
                                        //padding: EdgeInsets.only(right: 0, bottom: 12.h),
                                        child: Icon(
                                          isObscure
                                              ? Icons.visibility_off
                                              : Icons.visibility,
                                          size: 20.w,
                                          color: const Color(0xff707070),
                                        ),
                                        alignment: Alignment.bottomRight,
                                      ),
                                    ),
                                  ),
//                                      controller: _comController,
                                  focusNode: _passFocusNode,
                                  keyboardType: TextInputType.emailAddress,
                                  onChanged: (value) {
                                    setState(() {
                                      pass = value;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  space(16.h, 0),
                  mainButton(
                      text: 'Sign Up',
                      onTap: () {},
                      backgroundColor: mainColor,
                      hasMargin: false),
                  space(16.h, 0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      line(3.h, 160.w, const Color(0xffE9E9E9),
                          hasDecoration: true),
                      Text(
                        "Or",
                        textScaleFactor: 1,
                        style:
                            openSans(16.sp, Colors.black38, fontWeight.medium),
                      ),
                      line(2.h, 160.w, const Color(0xffE9E9E9),
                          hasDecoration: true),
                    ],
                  ),
                  space(16.h, 0),
                  googleButton(onTap: () {}, text: "Google"),
                  space(32.h, 0),
                  GestureDetector(
                    onTap: () {
                      navigateToAndReplacement(context, LoginView());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Do you have an account ?",
                            textScaleFactor: 1,
                            style: openSans(
                                14.sp, Colors.black, fontWeight.medium)),
                        space(0, 8.w),
                        Text("Sign in",
                            textScaleFactor: 1,
                            style: openSans(14.sp, mainColor.withOpacity(.8),
                                fontWeight.medium)),
                      ],
                    ),
                  ),
                  space(32.h, 0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 270.w,
                        child: Text(
                          "use the application according yo policy rules , any Kind of violation will be subject to ",
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          textScaleFactor: 1,
                          style: openSans(12.sp, const Color(0xffADADAD),
                              fontWeight.regular),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
