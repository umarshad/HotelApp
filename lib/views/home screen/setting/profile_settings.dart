import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hotel_app/components/buttons/login_signup_button.dart';
import 'package:hotel_app/components/clipper/semi_circle.dart';
import 'package:hotel_app/components/constants/color_constants.dart';
import 'package:hotel_app/components/constants/image_constants.dart';
import 'package:hotel_app/views/home%20screen/setting/account_setting_screen.dart';
import 'package:hotel_app/views/home%20screen/setting/favorite_screen.dart';
import 'package:hotel_app/views/home%20screen/setting/rating_screen.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({super.key});

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
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
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(color: AppColors().redColor),
                ),
              ),
              Transform.translate(
                offset: Offset(0, 120.h),
                child: Center(
                  child: CircleAvatar(
                    radius: 80.r,
                    backgroundImage: const AssetImage(
                      ImageConstants.personImage,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          Text(
            'Justice Life',
            style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
          ),
          Text(
            'justice@justice.life',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16.sp,
                color: const Color(0xff6B7280),
                letterSpacing: 1.5),
          ),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AccountSettingScreen(),
                  ),
                );
              },
              child: Card(
                color: AppColors().whiteColor,
                elevation: 5,
                child: const ListTile(
                  leading: Icon(CupertinoIcons.person_circle),
                  title: Text('Account Setting'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Card(
              color: AppColors().whiteColor,
              elevation: 7,
              child: Column(
                children: [
                  ListTile(
                    leading: SvgPicture.asset('svgs/language.svg'),
                    title: Text(
                      'Language',
                      style: TextStyle(
                          fontSize: 18.sp, fontWeight: FontWeight.w400),
                    ),
                  ),
                  ListTile(
                    leading: SvgPicture.asset('svgs/feedback.svg'),
                    title: Text(
                      'Feedback',
                      style: TextStyle(
                          fontSize: 18.sp, fontWeight: FontWeight.w400),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RatingScreen(),
                        ),
                      );
                    },
                    child: ListTile(
                      leading: SvgPicture.asset('svgs/star.svg'),
                      title: Text(
                        'Rate us',
                        style: TextStyle(
                            fontSize: 18.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: SvgPicture.asset('svgs/upgrade.svg'),
                    title: Text(
                      'New Version',
                      style: TextStyle(
                          fontSize: 18.sp, fontWeight: FontWeight.w400),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FavoriteScreen(),
                        ),
                      );
                    },
                    child: ListTile(
                      leading: const Icon(
                        CupertinoIcons.heart,
                      ),
                      title: Text(
                        'Favorites',
                        style: TextStyle(
                            fontSize: 18.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60.0, vertical: 5),
            child: LoginButton(
                buttonColor: AppColors().redColor,
                buttonText: 'Logout',
                textStyle: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors().whiteColor),
                onTap: () {}),
          )
        ],
      ),
    );
  }
}
