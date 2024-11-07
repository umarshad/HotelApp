import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app/components/constants/color_constants.dart';
import 'package:hotel_app/components/constants/image_constants.dart';

class OnboardingScreenOne extends StatefulWidget {
  const OnboardingScreenOne({super.key});

  @override
  State<OnboardingScreenOne> createState() => _OnboardingScreenOneState();
}

class _OnboardingScreenOneState extends State<OnboardingScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().bodyColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Transform.translate(
              offset: Offset(0, -70.h),
              child: Stack(
                children: [
                  Container(
                    height: 400.h,
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    child: const Image(
                      image: AssetImage(ImageConstants.introOneImage),
                    ),
                  ),
                  const Positioned(
                    bottom: 20,
                    left: -5,
                    child: Image(
                      image: AssetImage(ImageConstants.introtwoImage),
                    ),
                  ),
                ],
              ),
            ),
            Transform.translate(
              offset: Offset(0, -40.h),
              child: Text(
                'Nearby restaurants',
                style: TextStyle(
                  fontSize: 24.sp,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff1F2937),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(0, -30.h),
              child: Text(
                'You don\'t have to go far to find a good restaurant,\nwe have provided all the restaurants that is \nnear you',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff4B5563),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
