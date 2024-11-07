import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hotel_app/components/constants/image_constants.dart';
import 'package:hotel_app/views/onboarding%20screen/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: Image(
          image: AssetImage(ImageConstants.splashImage),
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
