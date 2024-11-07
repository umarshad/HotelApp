import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_app/components/buttons/login_signup_button.dart';
import 'package:hotel_app/components/constants/color_constants.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors().whiteColor,
        body: Column(
          children: [
            SizedBox(
              height: 35.h,
            ),
            Text(
              'Upload',
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 130.h,
            ),
            Center(
              child: DottedBorder(
                color: Colors.black,
                strokeWidth: 2,
                dashPattern: const [6, 5],
                borderType: BorderType.RRect,
                child: Container(
                  height: 298.h,
                  width: 342.w,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      SvgPicture.asset('svgs/uploadIcon.svg'),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Drag & drop files or',
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.w700),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Browse',
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors().redColor,
                                  decoration: TextDecoration.underline,
                                  decorationColor: AppColors().redColor),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        'Supported formates: JPEG, PNG, GIF, \nMP4, PDF, PSD, AI, Word, PPT',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors().uploadTextColor),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 55.0, vertical: 25),
              child: LoginButton(
                  buttonColor: AppColors().redColor.withOpacity(0.5),
                  buttonText: 'UPLOAD FILES',
                  textStyle: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors().whiteColor),
                  onTap: () {}),
            )
          ],
        ),
      ),
    );
  }
}
