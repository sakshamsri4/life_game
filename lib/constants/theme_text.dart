import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_game/constants/app_colors.dart';
export 'package:my_game/theme_text.dart';

TextStyle getTextHeading(
    {Color? color = AppColors.colorPrimary,
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.w500}) {
  return GoogleFonts.poppins(
      textStyle:
          TextStyle(color: color, fontSize: fontSize, fontWeight: fontWeight));
}
