import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app/components/buttons/menu_button.dart';
import 'package:hotel_app/components/clipper/semi_circle.dart';
import 'package:hotel_app/components/constants/color_constants.dart';
import 'package:hotel_app/components/constants/image_constants.dart';
import 'package:hotel_app/views/home%20screen/drawer.dart';
import 'package:hotel_app/views/home%20screen/tab%20bar/all_container.dart';
import 'package:hotel_app/views/home%20screen/tab%20bar/burger_container.dart';
import 'package:hotel_app/views/home%20screen/tab%20bar/hot_dog_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().whiteColor,
      key: _scaffoldKey,
      drawer: const MyDrawer(),
      body: Stack(
        children: [
          Positioned(
            top: -140.h,
            left: -80.w,
            child: ClipPath(
              clipper: SemicircleClipper(),
              child: Container(
                width: 540.w,
                height: 500.h,
                decoration: BoxDecoration(
                  color: AppColors().redColor,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors().blackColor.withOpacity(0.1),
                      spreadRadius: 4.r,
                      blurRadius: 20.r,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                Column(
                  children: [
                    SizedBox(height: 15.h),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Card(
                        color: AppColors().whiteColor,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 15.w, top: 15.h, right: 15.w),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  MenuButton(
                                    onTap: () {
                                      _scaffoldKey.currentState?.openDrawer();
                                    },
                                  ),
                                  SizedBox(width: 15.w),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'DELIVER TO',
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w700,
                                            color: AppColors().deliverTextColor,
                                          ),
                                        ),
                                        SizedBox(height: 1.h),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Halal Lab office',
                                              style: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            SizedBox(width: 5.w),
                                            const Icon(Icons.arrow_drop_down),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 12.w),
                                  CircleAvatar(
                                    radius: 30.r,
                                    backgroundImage: const AssetImage(
                                        ImageConstants.personImage),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 30.w, bottom: 10.h),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Hey Leo, ',
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    'Good Afternoon!',
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 16.h),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 12.w,
                        right: 12,
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors().whiteColor,
                          prefixIcon: const Icon(Icons.search),
                          hintText: 'Search dishes, restaurants',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0.r),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 56.h),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'All Categories',
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors().blackColor,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'See All',
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors().blackColor,
                                    ),
                                  ),
                                  SizedBox(width: 8.0.w),
                                  Image.asset(ImageConstants.vectorImage),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      height: 70.h,
                      decoration: BoxDecoration(
                        color: AppColors().whiteColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            offset: const Offset(0, -3),
                            blurRadius: 5,
                            spreadRadius: 0,
                          ),
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            offset: const Offset(0, 3),
                            blurRadius: 5,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TabBar(
                          controller: tabController,
                          dividerColor: Colors.transparent,
                          indicator: BoxDecoration(
                            color: AppColors().redColor,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          tabs: [
                            Tab(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Image.asset(
                                        'images/ice_cream.png',
                                        height: 40.h,
                                        width: 40.w,
                                      ),
                                    ),
                                    SizedBox(width: 5.w),
                                    Expanded(
                                      child: Text(
                                        'All',
                                        style: TextStyle(fontSize: 13.sp),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Tab(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: const AssetImage(
                                        'images/hot_dog.png',
                                      ),
                                      radius: 20.r,
                                    ),
                                    SizedBox(width: 5.w),
                                    Expanded(
                                      child: Text(
                                        'Hot Dog',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(fontSize: 13.sp),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Tab(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage:
                                          const AssetImage('images/burger.png'),
                                      radius: 20.r,
                                    ),
                                    SizedBox(width: 5.w),
                                    Expanded(
                                      child: Text(
                                        'Burger',
                                        style: TextStyle(fontSize: 13.sp),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                          unselectedLabelColor: AppColors().blackColor,
                          labelColor: AppColors().whiteColor,
                        ),
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TabBarView(
                      controller: tabController,
                      children: const [
                        AllContainer(),
                        HotDogContainer(),
                        BurgerContainer(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
