import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app/components/constants/image_constants.dart';

class NextButton extends StatefulWidget {
  final VoidCallback? onTap;

  const NextButton({super.key, required this.onTap});

  @override
  State<NextButton> createState() => _NextButtonState();
}

class _NextButtonState extends State<NextButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: 70.h,
        width: 70.w,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: const Image(
          image: AssetImage(ImageConstants.nextButtonImage),
        ),
      ),
    );
  }
}
