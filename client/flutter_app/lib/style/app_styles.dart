import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'size_config.dart';

class AppStyles {
  /* Colors */
  static const kMainColor = Color(0xfffec41f);
  static const kSecondaryColor = Color(0xffd9491e);
  static const kBackgroundColor = Color(0xffa6a6a6);
  static const kSecondaryBackgroundColor = Color(0xfff2f2f2);
  /* Spaces */
  final double kPaddingHorizontal = SizeConfig.blockSizeHorizontal! * 6;
  static const double kBorderRadius = 10.0;
  /* Fonts */
  final kQuestialBold = GoogleFonts.questrial(
    fontWeight: FontWeight.w700,
  );
  final kQuestialSemibold = GoogleFonts.questrial(
    fontWeight: FontWeight.w600,
  );
  final kQuestialMedium = GoogleFonts.questrial(
    fontWeight: FontWeight.w500,
  );
  final kQuestialRegular = GoogleFonts.questrial(
    fontWeight: FontWeight.w400,
  );
}
