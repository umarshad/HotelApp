import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginButton extends StatelessWidget {
  final Color buttonColor;
  final String buttonText;
  final TextStyle textStyle;
  final VoidCallback onTap;

  const LoginButton({
    super.key,
    required this.buttonColor,
    required this.buttonText,
    required this.textStyle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 50.h,
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: 8),
              Center(
                child: Text(
                  buttonText,
                  style: textStyle,
                ),
              ),
              SizedBox(
                width: 20.w,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
