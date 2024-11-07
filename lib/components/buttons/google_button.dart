import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {
  final Color buttonColor;
  final String buttonText;
  final TextStyle textStyle;
  final VoidCallback onTap;
  final String imagePath;

  const GoogleButton({
    super.key,
    required this.buttonColor,
    required this.buttonText,
    required this.textStyle,
    required this.onTap,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: height * 0.06,
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: height * 0.05,
                width: width * 0.05,
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: Image(image: AssetImage(imagePath)),
              ),
              SizedBox(width: width * 0.07),
              Text(
                buttonText,
                style: textStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
