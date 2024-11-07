import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app/components/buttons/login_signup_button.dart';
import 'package:hotel_app/components/constants/color_constants.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key});

  @override
  State<NotesScreen> createState() => NotesScreenState();
}

class NotesScreenState extends State<NotesScreen> {
  final textController = TextEditingController();
  bool isTextEntered = false;

  @override
  void initState() {
    super.initState();
    textController.addListener(() {
      setState(() {
        isTextEntered = textController.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors().whiteColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColors().whiteColor,
          centerTitle: true,
          title: Text(
            'Note',
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20.h),
                Container(
                  padding: EdgeInsets.all(12.r),
                  height: 350.h,
                  width: 327.w,
                  decoration: BoxDecoration(
                    color: AppColors().containerColor,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: TextFormField(
                    controller: textController,
                    maxLines: null,
                    expands: true,
                    decoration: const InputDecoration(
                      hintText: 'Type Here...',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: LoginButton(
                    buttonColor: isTextEntered
                        ? AppColors().redColor
                        : AppColors().redColor.withOpacity(0.5),
                    buttonText: 'Note Save',
                    textStyle: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors().whiteColor,
                    ),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
