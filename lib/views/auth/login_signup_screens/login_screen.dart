import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app/components/buttons/google_button.dart';
import 'package:hotel_app/components/buttons/login_signup_button.dart';
import 'package:hotel_app/components/constants/color_constants.dart';
import 'package:hotel_app/components/constants/image_constants.dart';
import 'package:hotel_app/views/home%20screen/home_screen.dart';

class LoginScreen extends StatefulWidget {
  final int initialIndex;
  const LoginScreen({super.key, required this.initialIndex});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            child: Image.asset(
              ImageConstants.registrationScreenImage,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: double.infinity.h,
            width: double.infinity.w,
            decoration: BoxDecoration(
              color: AppColors().greyColor.withOpacity(0.5),
            ),
          ),
          Positioned(
            bottom: 0,
            child: SafeArea(
              child: Container(
                height: 576.h,
                width: 375.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35.r),
                    topRight: Radius.circular(35.r),
                  ),
                  color: AppColors().greyColor,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 15.h),
                    Container(
                      height: 6.h,
                      width: 48.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors().indicatorColor,
                      ),
                    ),
                    SizedBox(height: 30.h),
                    DefaultTabController(
                      initialIndex: widget.initialIndex,
                      length: 2,
                      child: Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TabBar(
                              dividerColor: Colors.transparent,
                              labelColor: AppColors().redColor,
                              unselectedLabelColor:
                                  AppColors().unselectedTextColor,
                              indicatorColor: AppColors().redColor,
                              tabs: [
                                Tab(
                                  child: Text(
                                    'Create Account',
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: TabBarView(
                                children: [
                                  //---------------create account Tab---------------
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            'Full Name',
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w600,
                                                color: AppColors()
                                                    .authHeadlineColor),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        TextFormField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15.h,
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            'Email address',
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w600,
                                                color: AppColors()
                                                    .authHeadlineColor),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        TextFormField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15.h,
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            'Password',
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w600,
                                                color: AppColors()
                                                    .authHeadlineColor),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        TextFormField(
                                          obscureText: true,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        LoginButton(
                                          buttonColor: AppColors().redColor,
                                          buttonText: 'Registration',
                                          textStyle: TextStyle(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w700,
                                              color: AppColors().whiteColor),
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const HomeScreen()));
                                          },
                                        ),
                                        GoogleButton(
                                            buttonColor:
                                                AppColors().googleButtonColor,
                                            buttonText: 'Sign up with Google',
                                            textStyle: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w600,
                                                color: AppColors().blackColor),
                                            onTap: () {},
                                            imagePath:
                                                ImageConstants.googleImage)
                                      ],
                                    ),
                                  ),
                                  //---------------Login Tab---------------
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            'Full Name',
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w600,
                                                color: AppColors()
                                                    .authHeadlineColor),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        TextFormField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15.h,
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            'Password',
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w600,
                                                color: AppColors()
                                                    .authHeadlineColor),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        TextFormField(
                                          obscureText: true,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              'Forget Password?',
                                              style: TextStyle(
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w600,
                                                  color: AppColors().redColor),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        LoginButton(
                                          buttonColor: AppColors().redColor,
                                          buttonText: 'Login',
                                          textStyle: TextStyle(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w700,
                                              color: AppColors().whiteColor),
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const HomeScreen()));
                                          },
                                        ),
                                        GoogleButton(
                                            buttonColor:
                                                AppColors().googleButtonColor,
                                            buttonText: 'Login with Google',
                                            textStyle: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w600,
                                                color: AppColors().blackColor),
                                            onTap: () {},
                                            imagePath:
                                                ImageConstants.googleImage),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
