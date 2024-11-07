import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app/components/clipper/semi_circle.dart';
import 'package:hotel_app/components/constants/color_constants.dart';
import 'package:hotel_app/components/constants/image_constants.dart';
import 'package:hotel_app/components/container/recommended_container.dart';
import 'package:hotel_app/views/home%20screen/Menu/menu_screen.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
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
                top: 60,
                left: 0,
                right: 0,
                child: Center(
                  child: Text(
                    'Favorites',
                    style: TextStyle(
                      fontSize: 22.sp,
                      color: AppColors().whiteColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Transform.translate(
            offset: Offset(0, -50.h),
          ),
          Transform.translate(
            offset: Offset(0, -70.h),
            child: CircleAvatar(
              radius: 75.r,
              backgroundImage: const AssetImage(ImageConstants.whereImage),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Transform.translate(
                offset: Offset(0, -55.h),
                child: const SingleChildScrollView(
                  child: Column(
                    children: [
                      RecommendedContainer(
                        imagePath: ImageConstants.hotelImage,
                        hotelName: 'Le Courno Restaurant ',
                        itemNames: 'Burger - Chicken - Rice\n - Wings',
                        openTime: '12:00 PM',
                        closeTime: '12:00 PM',
                        rating: '4.7',
                        iconPath: Icons.favorite,
                      ),
                      RecommendedContainer(
                        imagePath: ImageConstants.hotelImage,
                        hotelName: 'Le Courno Restaurant ',
                        itemNames: 'Burger - Chicken - Rice\n - Wings',
                        openTime: '12:00 PM',
                        closeTime: '12:00 PM',
                        rating: '4.7',
                        iconPath: Icons.favorite,
                      ),
                      RecommendedContainer(
                        imagePath: ImageConstants.hotelImage,
                        hotelName: 'Le Courno Restaurant ',
                        itemNames: 'Burger - Chicken - Rice\n - Wings',
                        openTime: '12:00 PM',
                        closeTime: '12:00 PM',
                        rating: '4.7',
                        iconPath: Icons.favorite,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
