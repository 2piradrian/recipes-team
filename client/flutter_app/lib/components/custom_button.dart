import 'package:flutter/material.dart';
import 'package:flutter_app/style/app_styles.dart';
import 'package:flutter_app/style/size_config.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double height;
  final double width;
  final double fontSize;
  final VoidCallback onPressed;
  final Color? color;
  final Color? textColor;

  const CustomButton({
    required this.text,
    required this.onPressed,
    required this.height,
    required this.width,
    required this.fontSize,
    this.color,
    this.textColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 300,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          fixedSize: Size(
            width,
            height,
          ),
          backgroundColor: color ?? AppStyles.kMainColor,
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
              fontSize: fontSize,
              color: textColor ?? AppStyles.kBackgroundColor),
        ),
      ),
    );
  }
}
