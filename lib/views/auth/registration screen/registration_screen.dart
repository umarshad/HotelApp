import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app/components/buttons/login_signup_button.dart';
import 'package:hotel_app/components/constants/color_constants.dart';
import 'package:hotel_app/components/constants/image_constants.dart';
import 'package:hotel_app/views/auth/login_signup_screens/login_screen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SizedBox(
            height: double.infinity,
            child: Image(
              image: AssetImage(ImageConstants.registrationScreenImage),
              fit: BoxFit.fitHeight,
            ),
          ),
          Container(
            height: double.infinity.h,
            width: double.infinity.w,
            decoration:
                BoxDecoration(color: AppColors().greyColor.withOpacity(0.5)),
          ),
          Padding(
            padding: EdgeInsets.all(15.0.sp),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 120.h),
                  Container(
                    height: 500.h,
                    width: 400.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors().blackColor.withOpacity(0.5),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(16.0.sp),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 25.0.sp),
                            child: Text(
                              'Welcome',
                              style: TextStyle(
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Montserrat',
                                  color: AppColors().greyColor),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(height: 16.h),
                          Text(
                            'Before enjoying Food \nmedia services \nPlease register first',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.italic,
                                color: AppColors().greyColor),
                          ),
                          SizedBox(height: 40.h),
                          LoginButton(
                            buttonColor: AppColors().redColor,
                            buttonText: 'Create Account',
                            textStyle: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: AppColors().greyColor),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginScreen(
                                    initialIndex: 0,
                                  ),
                                ),
                              );
                            },
                          ),
                          LoginButton(
                            buttonColor: AppColors().greyColor.withOpacity(0.7),
                            buttonText: 'Login',
                            textStyle: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w800,
                                fontStyle: FontStyle.italic,
                                color: AppColors().blackColor),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginScreen(
                                    initialIndex: 1,
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Text(
                    'By logging in or registering, you have \nagreed to the Terms and Conditions and \nPrivacy Policy.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppColors().greyColor,
                        fontSize: 15.sp,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
