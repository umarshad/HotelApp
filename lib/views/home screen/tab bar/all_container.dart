import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app/components/constants/image_constants.dart';
import 'package:hotel_app/components/container/recommended_container.dart';

class AllContainer extends StatelessWidget {
  const AllContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 1.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Recommended for you',
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w800),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          const RecommendedContainer(
            imagePath: ImageConstants.hotelImage,
            hotelName: 'Le Courno Restaurant ',
            itemNames: 'Burger - Chicken - Riche \n- Wings',
            openTime: '12:00 PM',
            closeTime: '12:00 PM',
            rating: '4.7',
            iconPath: Icons.favorite_border_outlined,
          ),
          SizedBox(height: 2.h),
          const RecommendedContainer(
            imagePath: ImageConstants.hotelImage,
            hotelName: 'Le Courno Restaurant ',
            itemNames: 'Burger - Chicken - Riche\n - Wings',
            openTime: '12:00 PM',
            closeTime: '12:00 PM',
            rating: '4.7',
            iconPath: Icons.favorite_border_outlined,
          ),
        ],
      ),
    );
  }
}
