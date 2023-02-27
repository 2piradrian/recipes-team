import 'package:flutter/material.dart';
import 'package:flutter_app/style/app_styles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double height;
  final double width;
  final VoidCallback onPressed;
  final Color? color;
  final Color? textColor;

  const CustomButton({
    required this.text,
    required this.onPressed,
    required this.height,
    required this.width,
    this.color,
    this.textColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(height, width),
        backgroundColor: color ?? AppStyles.kMainColor,
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 18.0, color: textColor ?? AppStyles.kBackgroundColor),
      ),
    );
  }
}
