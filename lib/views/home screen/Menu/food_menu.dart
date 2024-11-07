import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app/components/clipper/semi_circle.dart';
import 'package:hotel_app/components/constants/color_constants.dart';
import 'package:hotel_app/components/constants/image_constants.dart';
import 'package:hotel_app/views/home%20screen/Menu/menu_screen.dart';

class FoodMenu extends StatefulWidget {
  const FoodMenu({super.key});

  @override
  State<FoodMenu> createState() => _FoodMenuState();
}

class _FoodMenuState extends State<FoodMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().whiteColor,
      body: Column(
        children: [
          Stack(
            children: [
              ClipPath(
                clipper: SemicircleClipper(),
                child: Container(
                  height: 180.h,
                  width: double.infinity,
                  color: AppColors().redColor,
                ),
              ),
              const Positioned(top: 50, left: 10, child: CustomBackButton()),
              Positioned(
                top: 60.h,
                left: 130,
                child: Text(
                  'Food Menu',
                  style: TextStyle(
                    fontSize: 22.sp,
                    color: AppColors().whiteColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          Transform.translate(
            offset: Offset(0, -70.h),
            child: CircleAvatar(
              radius: 75.r,
              backgroundImage: const AssetImage(ImageConstants.whereImage),
            ),
          ),
          Transform.translate(
            offset: Offset(0, -40.h),
            child: Text(
              'Le Courno’s Restorentie',
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(
                    ImageConstants.girlImage,
                    fit: BoxFit.fill,
                  ),
                ),
                Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50.h,
                        width: 50.w,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors().greyColor),
                        child: const Icon(CupertinoIcons.back),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50.h,
                        width: 50.w,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors().greyColor),
                        child: const Icon(CupertinoIcons.forward),
                      ),
                    ),
                  ],
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
