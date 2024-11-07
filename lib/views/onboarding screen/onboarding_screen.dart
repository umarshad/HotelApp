import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app/components/buttons/next_button.dart';
import 'package:hotel_app/components/constants/color_constants.dart';
import 'package:hotel_app/views/home%20screen/map_screen.dart';
import 'package:hotel_app/views/onboarding%20screen/onboarding_screeen_three.dart';
import 'package:hotel_app/views/onboarding%20screen/onboarding_screen_one.dart';
import 'package:hotel_app/views/onboarding%20screen/onboarding_screen_two.dart';
import 'package:hotel_app/views/auth/registration%20screen/registration_Screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController pageController = PageController();

  void _nextPage() {
    if (pageController.page?.toInt() == 2) {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const RegistrationScreen()));
    } else {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            children: const [
              OnboardingScreenOne(),
              OnboardingScreenTwo(),
              OnboardingScreeenThree(),
            ],
          ),
          Positioned(
            bottom: 20.h,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MapScreen()));
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                        color: AppColors().redColor,
                      ),
                    ),
                  ),
                  SmoothPageIndicator(
                    controller: pageController,
                    count: 3,
                    effect: ExpandingDotsEffect(
                      activeDotColor: AppColors().redColor,
                      dotHeight: 10.h,
                      dotWidth: 10.w,
                      spacing: 8,
                      expansionFactor: 1.1.w,
                      dotColor: AppColors().blackColor,
                    ),
                  ),
                  NextButton(
                    onTap: _nextPage, // Use the _nextPage method
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
