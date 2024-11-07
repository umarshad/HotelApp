import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app/components/buttons/login_signup_button.dart';
import 'package:hotel_app/components/constants/color_constants.dart';
import 'package:hotel_app/components/constants/image_constants.dart';
import 'package:hotel_app/views/home%20screen/Menu/location_screen.dart';
import 'package:hotel_app/views/home%20screen/setting/notes_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors().redColor,
        automaticallyImplyLeading: false,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomBackButton(),
        ),
        centerTitle: true,
        title: Text(
          'Restaurant Menu',
          style: TextStyle(
            fontSize: 22.sp,
            fontWeight: FontWeight.w700,
            color: AppColors().whiteColor,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NotesScreen()));
              },
              icon: Icon(
                Icons.menu_book_outlined,
                color: AppColors().whiteColor,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Transform.translate(
            offset: const Offset(0, -5),
            child: Container(
              height: 220.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              clipBehavior: Clip.hardEdge,
              child: Image.asset(
                ImageConstants.hotelMaxImage,
                width: double.infinity,
                height: 220.h,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0, -70.h),
            child: Container(
              height: 140.h,
              width: 140.w,
              decoration: const BoxDecoration(shape: BoxShape.circle),
              child: Image.asset(ImageConstants.whereImage),
            ),
          ),
          Transform.translate(
            offset: const Offset(0, -60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Le Courno’s Ristorante',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Burger - Chicken - Rice - Wings',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff61636E),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      CupertinoIcons.star,
                      color: AppColors().redColor,
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      '4.7',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(width: 25.w),
                    Text(
                      '5000+ ratings',
                      style: TextStyle(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'See Reviews',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors().redColor,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Open:',
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      '12:00 AM',
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors().greenColor,
                      ),
                    ),
                    SizedBox(width: 15.w),
                    Text(
                      'Distance: 1500 km away',
                      style: TextStyle(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff808080),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 28.0,
                      vertical: 8,
                    ),
                    child: Text(
                      'Description',
                      style: TextStyle(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors().blackColor,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: Text(
                      'It is a restaurant with an amazing menu: '
                      'burgers, steaks, pizza, wraps, drinks, hot bar, '
                      'salad bar, and many other items to give you joy and taste.',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors().blackColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 25, bottom: 15, right: 5),
            child: Row(
              children: [
                SizedBox(
                  width: 300.w,
                  child: Center(
                    child: LoginButton(
                      buttonColor: AppColors().redColor,
                      buttonText: 'Moderate',
                      textStyle: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors().whiteColor,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LocationScreen(),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Image.asset(ImageConstants.arrowImage)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        height: 45.h,
        width: 45.h,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors().whiteColor,
        ),
        child: const Icon(CupertinoIcons.back),
      ),
    );
  }
}
