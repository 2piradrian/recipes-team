import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'size_config.dart';

class AppStyles {
  /* Colors */
  static const kMainColor = Color(0xff20c060);
  static const kShadedMainColor = Color(0xffe4f4ea);
  static const kSecondaryColor = Color(0xffd9491e);
  static const kBackgroundColor = Color.fromARGB(255, 255, 255, 255);
  static const kCardBackgroundColor = Color(0xFFEEEEEE);
  static const kContrastColor = Color.fromARGB(255, 0, 0, 0);
  /* Spaces */
  final double kPaddingHorizontal = SizeConfig.blockSizeHorizontal! * 6;
  static const double kBorderRadius = 10.0;
  /* Fonts */
  static final kMontserratBold = GoogleFonts.montserrat(
    fontWeight: FontWeight.w700,
    color: AppStyles.kContrastColor,
  );
  static final kMontserratSemibold = GoogleFonts.montserrat(
    fontWeight: FontWeight.w600,
    color: AppStyles.kContrastColor,
  );
  static final kMontserratMedium = GoogleFonts.montserrat(
    fontWeight: FontWeight.w500,
    color: AppStyles.kContrastColor,
  );
  static final kMontserratRegular = GoogleFonts.montserrat(
    fontWeight: FontWeight.w400,
    color: AppStyles.kContrastColor,
  );
}
