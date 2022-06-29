import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nsg_biolabs/shared/config/font_size.dart';

class CustomTextStyle {
  static final textFontApp = GoogleFonts.jostTextTheme();

  static TextStyle regular({Color? color, double fontSize = FontSize.medium}) => TextStyle(
        color: color,
        fontSize: fontSize.sp,
      );
  static TextStyle medium({Color? color, double fontSize = FontSize.medium}) => TextStyle(
        color: color,
        fontSize: fontSize.sp,
        fontWeight: FontWeight.w500,
      );
  static TextStyle bold({Color? color, double fontSize = FontSize.medium}) => TextStyle(
        color: color,
        fontSize: fontSize.sp,
        fontWeight: FontWeight.bold,
      );
}
