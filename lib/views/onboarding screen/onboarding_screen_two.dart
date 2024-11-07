import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app/components/constants/color_constants.dart';
import 'package:hotel_app/components/constants/image_constants.dart';

class OnboardingScreenTwo extends StatefulWidget {
  const OnboardingScreenTwo({super.key});

  @override
  State<OnboardingScreenTwo> createState() => _OnboardingScreenTwoState();
}

class _OnboardingScreenTwoState extends State<OnboardingScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().bodyColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: 400.h,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: const Stack(children: [
                    Image(
                      image: AssetImage(ImageConstants.redBoxImage),
                    ),
                    Image(
                      image: AssetImage(ImageConstants.introThreeImage),
                      fit: BoxFit.cover,
                    ),
                  ]),
                ),
              ],
            ),
            Transform.translate(
              offset: Offset(0, -40.h),
              child: Text(
                'Select the Favorites Menu',
                style: TextStyle(
                  fontSize: 24.sp,
                  fontFamily: 'Montserrat',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff1F2937),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(0, -31.h),
              child: Text(
                'Now eat well, don\'t leave the house,You can \nchoose your favorite food only with \none click',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff4B5563),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
