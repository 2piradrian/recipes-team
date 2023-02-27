import 'package:flutter/material.dart';
import 'package:flutter_app/style/app_styles.dart';
import 'package:flutter_app/style/size_config.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final double size;
  final String text;
  final FontWeight weight;
  const CustomText(
      {super.key,
      required this.size,
      required this.text,
      required this.weight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.montserrat(
        fontWeight: weight,
        color: AppStyles.kContrastColor,
        fontSize: SizeConfig.blockSizeHorizontal! * size,
      ),
    );
  }
}
