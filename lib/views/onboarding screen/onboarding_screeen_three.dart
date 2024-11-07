import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app/components/constants/color_constants.dart';
import 'package:hotel_app/components/constants/image_constants.dart';

class OnboardingScreeenThree extends StatefulWidget {
  const OnboardingScreeenThree({super.key});

  @override
  State<OnboardingScreeenThree> createState() => _OnboardingScreeenThreeState();
}

class _OnboardingScreeenThreeState extends State<OnboardingScreeenThree> {
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
              offset: Offset(0, -10.h),
              child: Stack(
                children: [
                  Container(
                    height: 400.h,
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    child: const Stack(children: [
                      Image(
                        image: AssetImage(ImageConstants.redBoxImage),
                      ),
                      Positioned(
                        top: 15,
                        left: 10,
                        child: Image(
                          image: AssetImage(ImageConstants.introFourImage),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
            Transform.translate(
              offset: Offset(0, -50.h),
              child: Text(
                'Good food at a cheap price',
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
              offset: Offset(0, -40.h),
              child: Text(
                'You can eat at expensive restaurants with \naffordable price',
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
