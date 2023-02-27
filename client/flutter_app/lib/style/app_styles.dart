import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'size_config.dart';

class AppStyles {
  /* Colors */
  static const kMainColor = Color(0xffffab40);
  static const kSecondaryColor = Color(0xffd9491e);
  static const kBackgroundColor = Color(0xFFEEEEEE);
  static const kSecondaryBackgroundColor = Color.fromARGB(255, 255, 255, 255);
  /* Spaces */
  final double kPaddingHorizontal = SizeConfig.blockSizeHorizontal! * 6;
  static const double kBorderRadius = 10.0;
  /* Fonts */
  final kQuestialBold = GoogleFonts.montserrat(
    fontWeight: FontWeight.w700,
  );
  final kQuestialSemibold = GoogleFonts.montserrat(
    fontWeight: FontWeight.w600,
  );
  final kQuestialMedium = GoogleFonts.montserrat(
    fontWeight: FontWeight.w500,
  );
  final kQuestialRegular = GoogleFonts.montserrat(
    fontWeight: FontWeight.w400,
  );
}
