import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app/components/constants/color_constants.dart';
import 'package:hotel_app/components/constants/image_constants.dart';
import 'package:hotel_app/views/home%20screen/Menu/menu_screen.dart';

class RecommendedContainer extends StatelessWidget {
  final String imagePath;
  final String hotelName;
  final String itemNames;
  final String openTime;
  final String closeTime;
  final String rating;
  final IconData? iconPath;

  const RecommendedContainer({
    super.key,
    required this.imagePath,
    required this.hotelName,
    required this.itemNames,
    required this.openTime,
    required this.closeTime,
    required this.rating,
    this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors().whiteColor,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    imagePath,
                    height: 75,
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      hotelName,
                      style: TextStyle(
                          fontSize: 20.sp, fontWeight: FontWeight.w400),
                    ),
                    Text(itemNames),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  'Open: ',
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700),
                ),
                Text(
                  openTime,
                  style: TextStyle(
                      color: AppColors().greenColor,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 35.w,
                ),
                Text(
                  'Closed: ',
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700),
                ),
                Text(
                  closeTime,
                  style: TextStyle(
                      color: AppColors().redColor, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                Icon(
                  iconPath,
                  color: AppColors().redColor,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Icon(
                  CupertinoIcons.star,
                  color: AppColors().redColor,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  rating,
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: AppColors().redColor,
                    backgroundColor: AppColors().whiteColor,
                    elevation: 2,
                    padding:
                        EdgeInsets.symmetric(horizontal: 25.0.w, vertical: 0.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0.r),
                      side: BorderSide(color: AppColors().redColor),
                    ),
                  ),
                  child: const Text(
                    'Moderate',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MenuScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: AppColors().redColor,
                    backgroundColor: AppColors().redColor,
                    elevation: 2,
                    padding: EdgeInsets.symmetric(
                        horizontal: 20.0.w,
                        vertical: 0.0.h), // Reduce vertical padding here
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      side: BorderSide(color: AppColors().redColor),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'view menu',
                        style: TextStyle(
                          color: AppColors().whiteColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Icon(
                        Icons.menu_book_outlined,
                        color: AppColors().whiteColor,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10.w),
                Image.asset(
                  ImageConstants.arrowImage,
                  height: 35.h,
                  width: 30.w,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
