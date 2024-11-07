import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app/components/constants/color_constants.dart';
import 'package:hotel_app/components/constants/image_constants.dart';

class MenuButton extends StatelessWidget {
  final VoidCallback onTap;
  const MenuButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: onTap,
      child: Container(
        height: 50.h,
        width: 50.w,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors().menuButtonColor,
        ),
        child: Image.asset(
          ImageConstants.menuIcon,
        ),
      ),
    );
  }
}
