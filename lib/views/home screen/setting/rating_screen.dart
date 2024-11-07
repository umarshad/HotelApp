import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app/components/clipper/semi_circle.dart';
import 'package:hotel_app/components/constants/color_constants.dart';
import 'package:hotel_app/components/constants/image_constants.dart';
import 'package:hotel_app/views/home%20screen/Menu/menu_screen.dart';

class RatingScreen extends StatefulWidget {
  const RatingScreen({super.key});

  @override
  State<RatingScreen> createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {
  final List<int> ratings = [
    63,
    15,
    9,
    4,
    9
  ]; // Sample ratings for 5, 4, 3, 2, 1 stars

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors().whiteColor,
        body: Column(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    ClipPath(
                      clipper: SemicircleClipper(),
                      child: Container(
                        height: 140.h,
                        width: double.infinity,
                        color: AppColors().redColor,
                      ),
                    ),
                    const Positioned(
                      top: 20,
                      left: 10,
                      child: CustomBackButton(),
                    ),
                    Positioned(
                      top: 30,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Text(
                          'Ratings & Reviews',
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
                  child: CircleAvatar(
                    radius: 75.r,
                    backgroundImage:
                        const AssetImage(ImageConstants.whereImage),
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Card(
                        color: AppColors().whiteColor,
                        elevation: 2,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 15.0),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '4.3',
                                    style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: List.generate(5, (index) {
                                      return Icon(
                                        index < 4
                                            ? CupertinoIcons.star_fill
                                            : CupertinoIcons.star_lefthalf_fill,
                                        color: Colors.amber,
                                      );
                                    }),
                                  ),
                                  SizedBox(height: 5.h),
                                  Text(
                                    'All ratings (5000+)',
                                    style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 20.w),
                              Expanded(
                                child: Column(
                                  children: List.generate(5, (index) {
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 4.0),
                                      child: Row(
                                        children: [
                                          Text(
                                            '${5 - index}',
                                            style: TextStyle(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(width: 5.w),
                                          Icon(
                                            CupertinoIcons.star_fill,
                                            color: Colors.amber,
                                            size: 15.sp,
                                          ),
                                          SizedBox(width: 10.w),
                                          Expanded(
                                            child: LinearProgressIndicator(
                                              value: ratings[index] / 100,
                                              color: Colors.amber,
                                              backgroundColor: Colors.grey[300],
                                              minHeight: 8,
                                            ),
                                          ),
                                          SizedBox(width: 10.w),
                                          Text(
                                            '${ratings[index]}%',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey[800],
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  }),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Reviews',
                                  style: TextStyle(
                                      fontSize: 22.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12.0),
                              child: Card(
                                color: AppColors().whiteColor,
                                elevation: 2,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Mian',
                                        style: TextStyle(
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Row(
                                        children: [
                                          const Icon(Icons.star,
                                              color: Colors.amber),
                                          Icon(
                                            Icons.star_border_outlined,
                                            color: AppColors().redColor,
                                          ),
                                          Icon(
                                            Icons.star_border_outlined,
                                            color: AppColors().redColor,
                                          ),
                                          Icon(
                                            Icons.star_border_outlined,
                                            color: AppColors().redColor,
                                          ),
                                          Icon(
                                            Icons.star_border_outlined,
                                            color: AppColors().redColor,
                                          ),
                                          Text(
                                            ' - Yesterday',
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                color: AppColors()
                                                    .blackColor
                                                    .withOpacity(0.3)),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Text(
                                        'there were no burgers in any of deal',
                                        style: TextStyle(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 20.h,
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 10.h,
                                          ),
                                          Icon(Icons.thumb_up_alt,
                                              color: AppColors()
                                                  .blackColor
                                                  .withOpacity(0.4)),
                                          SizedBox(
                                            width: 10.w,
                                          ),
                                          Text(
                                            'Helpful',
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.bold,
                                                color: AppColors()
                                                    .blackColor
                                                    .withOpacity(0.5)),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Rate this app',
                                style: TextStyle(
                                    fontSize: 22.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(height: 10.h),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: List.generate(5, (index) {
                                  return Icon(
                                    CupertinoIcons.star,
                                    color: AppColors().redColor,
                                  );
                                }),
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                'Write a review',
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(height: 10.h),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText:
                                      'Describe your experience (optional)',
                                  hintStyle: TextStyle(
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xff808080),
                                  ),
                                  filled: true,
                                  fillColor: AppColors().whiteColor,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              SizedBox(height: 15.h),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 40.0),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    height: 50.h,
                                    decoration: BoxDecoration(
                                      color: AppColors().redColor,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const SizedBox(width: 8),
                                        Center(
                                          child: Text(
                                            'Upload Image',
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w700,
                                                color: AppColors().whiteColor),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20.w,
                                        ),
                                        Icon(
                                          Icons.upload,
                                          color: AppColors().whiteColor,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20.h,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
