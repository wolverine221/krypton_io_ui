import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/core/app_theme/app_colors/appcolors.dart';

class AppTextStyle {
  // -------------------------
  // Helper to get color based on theme
  // -------------------------
  static Color _getColor({required BuildContext context, Color? color}) {
    if (color != null) return color;
    final appColors = Theme.of(context).extension<AppColors>();
    return appColors?.textBlack ?? Colors.black87;
  }

  // -------------------------
  // Responsive font size helper
  // -------------------------
  static double _responsiveFont(BuildContext context, double fontSize) {
    double screenWidth = MediaQuery.of(context).size.width;
    double responsiveSize = fontSize * screenWidth / 1200; // base design width
    return responsiveSize.clamp(12, 60); // min 12 max 60
  }

  // -------------------------
  // Core Styles
  // -------------------------
  static TextStyle sRegular({required BuildContext context, double? fontSize, Color? color}) =>
      GoogleFonts.montserrat(
        fontSize: _responsiveFont(context, fontSize ?? 16),
        fontWeight: FontWeight.w400,
        color: _getColor(context: context, color: color),
      );

  static TextStyle sMedium({required BuildContext context, double? fontSize, Color? color}) =>
      GoogleFonts.montserrat(
        fontSize: _responsiveFont(context, fontSize ?? 16),
        fontWeight: FontWeight.w500,
        color: _getColor(context: context, color: color),
      );

  static TextStyle sSemiBold({required BuildContext context, double? fontSize, Color? color}) =>
      GoogleFonts.montserrat(
        fontSize: _responsiveFont(context, fontSize ?? 16),
        fontWeight: FontWeight.w600,
        color: _getColor(context: context, color: color),
      );

  static TextStyle sBold({required BuildContext context, double? fontSize, Color? color}) =>
      GoogleFonts.montserrat(
        fontSize: _responsiveFont(context, fontSize ?? 16),
        fontWeight: FontWeight.w700,
        color: _getColor(context: context, color: color),
      );

  // -------------------------
  // Heading Styles
  // -------------------------
  static TextStyle hMedium({required BuildContext context, double? fontSize, Color? color}) =>
      GoogleFonts.montserrat(
        fontSize: _responsiveFont(context, fontSize ?? 24),
        fontWeight: FontWeight.w600,
        letterSpacing: 0.5,
        height: 1.3,
        color: _getColor(context: context, color: color),
      );

  static TextStyle hBold({required BuildContext context, double? fontSize, Color? color}) =>
      GoogleFonts.montserrat(
        fontSize: _responsiveFont(context, fontSize ?? 28),
        fontWeight: FontWeight.w700,
        height: 1.25,
        color: _getColor(context: context, color: color),
      );

  static TextStyle hExtraBold({required BuildContext context, double? fontSize, Color? color}) =>
      GoogleFonts.montserrat(
        fontSize: _responsiveFont(context, fontSize ?? 36),
        fontWeight: FontWeight.w800,
        height: 1.2,
        color: _getColor(context: context, color: color),
      );

  // -------------------------
  // Size Variants (XXS → Giant)
  // -------------------------
  static TextStyle xxsRegular({required BuildContext context, Color? color}) =>
      sRegular(context: context, fontSize: 10, color: color);
  static TextStyle xsRegular({required BuildContext context, Color? color}) =>
      sRegular(context: context, fontSize: 12, color: color);
  static TextStyle sRegularSize({required BuildContext context, Color? color}) =>
      sRegular(context: context, fontSize: 14, color: color);
  static TextStyle sBoldSize({required BuildContext context, Color? color}) =>
      sBold(context: context, fontSize: 14, color: color);

  static TextStyle mRegular({required BuildContext context, Color? color}) =>
      sRegular(context: context, fontSize: 16, color: color);
  static TextStyle mMedium({required BuildContext context, Color? color}) =>
      sMedium(context: context, fontSize: 16, color: color);
  static TextStyle mSemiBold({required BuildContext context, Color? color}) =>
      sSemiBold(context: context, fontSize: 16, color: color);
  static TextStyle mBold({required BuildContext context, Color? color}) =>
      sBold(context: context, fontSize: 16, color: color);

  static TextStyle lRegular({required BuildContext context, Color? color}) =>
      sRegular(context: context, fontSize: 20, color: color);
  static TextStyle lSemiBold({required BuildContext context, Color? color}) =>
      sSemiBold(context: context, fontSize: 20, color: color);
  static TextStyle lBold({required BuildContext context, Color? color}) =>
      sBold(context: context, fontSize: 20, color: color);

  static TextStyle xlRegular({required BuildContext context, Color? color}) =>
      sRegular(context: context, fontSize: 24, color: color);
  static TextStyle xxlRegular({required BuildContext context, Color? color}) =>
      sRegular(context: context, fontSize: 32, color: color);
  static TextStyle xxxlRegular({required BuildContext context, Color? color}) =>
      sRegular(context: context, fontSize: 40, color: color);
  static TextStyle hugeRegular({required BuildContext context, Color? color}) =>
      sRegular(context: context, fontSize: 48, color: color);
  static TextStyle giantRegular({required BuildContext context, Color? color}) =>
      sRegular(context: context, fontSize: 60, color: color);

  // -------------------------
  // Semantic Styles
  // -------------------------
  static TextStyle headline1({required BuildContext context, Color? color}) =>
      hExtraBold(context: context, fontSize: 48, color: color);
  static TextStyle headline2({required BuildContext context, Color? color}) =>
      hBold(context: context, fontSize: 36, color: color);
  static TextStyle headline3({required BuildContext context, Color? color}) =>
      hMedium(context: context, fontSize: 28, color: color);

  static TextStyle subtitle1({required BuildContext context, Color? color}) =>
      sSemiBold(context: context, fontSize: 18, color: color);
  static TextStyle subtitle2({required BuildContext context, Color? color}) =>
      sMedium(context: context, fontSize: 16, color: color);

  static TextStyle h4({required BuildContext context, Color? color}) => GoogleFonts.montserrat(
    fontSize: _responsiveFont(context, 22), // responsive 22px base
    fontWeight: FontWeight.w600, // semi-bold
    letterSpacing: 0.5,
    height: 1.3,
    color: _getColor(context: context, color: color),
  );

  static TextStyle bodyText1({required BuildContext context, Color? color}) =>
      sRegular(context: context, fontSize: 16, color: color);
  static TextStyle bodyText2({required BuildContext context, Color? color}) =>
      sRegular(context: context, fontSize: 14, color: color);

  static TextStyle button({required BuildContext context, Color? color}) =>
      sSemiBold(context: context, fontSize: 16, color: color);
  static TextStyle caption({required BuildContext context, Color? color}) =>
      sRegular(context: context, fontSize: 12, color: color);
  static TextStyle footnote({required BuildContext context, Color? color}) =>
      sRegular(context: context, fontSize: 10, color: color);
  static TextStyle overline({required BuildContext context, Color? color}) =>
      sRegular(context: context, fontSize: 10, color: color?.withOpacity(0.7));
}
