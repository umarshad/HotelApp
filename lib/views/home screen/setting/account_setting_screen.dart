import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_app/components/clipper/semi_circle.dart';
import 'package:hotel_app/components/constants/color_constants.dart';
import 'package:hotel_app/components/constants/image_constants.dart';
import 'package:hotel_app/views/home%20screen/Menu/menu_screen.dart';
import 'package:hotel_app/views/home%20screen/setting/edit_profile_screen.dart';
import 'package:hotel_app/views/home%20screen/setting/profile_settings.dart';

class AccountSettingScreen extends StatefulWidget {
  const AccountSettingScreen({super.key});

  @override
  State<AccountSettingScreen> createState() => _AccountSettingScreenState();
}

class _AccountSettingScreenState extends State<AccountSettingScreen> {
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
                left: 105,
                child: Center(
                  child: Text(
                    'Account Setting',
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
            offset: Offset(0, -70.h),
            child: InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const EditProfileScreen()));
              },
              child: CircleAvatar(
                radius: 75.r,
                backgroundImage: const AssetImage(ImageConstants.whereImage),
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Card(
                  color: AppColors().whiteColor,
                  elevation: 5,
                  child: ListTile(
                    leading: const Icon(CupertinoIcons.lock),
                    trailing: const Icon(CupertinoIcons.forward),
                    title: Text(
                      'Change password',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfileSettings(),
                      ),
                    );
                  },
                  child: Card(
                    color: AppColors().whiteColor,
                    elevation: 5,
                    child: ListTile(
                      leading: const Icon(CupertinoIcons.person_2),
                      trailing: const Icon(CupertinoIcons.forward),
                      title: Text(
                        'Edit profile',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Card(
                  color: AppColors().whiteColor,
                  elevation: 5,
                  child: ListTile(
                    trailing: SvgPicture.asset('svgs/logout.svg'),
                    title: Center(
                      child: Text(
                        'Logout',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
