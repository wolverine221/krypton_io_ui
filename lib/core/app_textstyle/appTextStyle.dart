import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/core/app_theme/app_colors/appcolors.dart';

class AppTextStyle {
  // -------------------------
  // Helper to get color based on theme if null
  // -------------------------
  static Color _getColor(BuildContext context, Color? color) {
    if (color != null) return color;
    final appColors = Theme.of(context).extension<AppColors>();
    return appColors?.textBlack ?? Colors.black87;
  }

  // -------------------------
  // Montserrat font weights
  // -------------------------
  static TextStyle sBold(BuildContext context, {double? fontSize, Color? color}) =>
      GoogleFonts.montserrat(
        fontSize: fontSize?.sp ?? 16.sp,
        fontWeight: FontWeight.w700,
        color: _getColor(context, color),
      );

  static TextStyle sSemiBold(BuildContext context, {double? fontSize, Color? color}) =>
      GoogleFonts.montserrat(
        fontSize: fontSize?.sp ?? 16.sp,
        fontWeight: FontWeight.w600,
        color: _getColor(context, color),
      );

  static TextStyle sRegular(BuildContext context, {double? fontSize, Color? color}) =>
      GoogleFonts.montserrat(
        fontSize: fontSize?.sp ?? 16.sp,
        fontWeight: FontWeight.w400,
        color: _getColor(context, color),
      );

  // -------------------------
  // Sizes (extra extra small → giant)
  // -------------------------
  // XXS
  static TextStyle xxsRegular(BuildContext context, {Color? color}) =>
      sRegular(context, fontSize: 10, color: color);
  static TextStyle xxsSemiBold(BuildContext context, {Color? color}) =>
      sSemiBold(context, fontSize: 10, color: color);
  static TextStyle xxsBold(BuildContext context, {Color? color}) =>
      sBold(context, fontSize: 10, color: color);

  // XS
  static TextStyle xsRegular(BuildContext context, {Color? color}) =>
      sRegular(context, fontSize: 12, color: color);
  static TextStyle xsSemiBold(BuildContext context, {Color? color}) =>
      sSemiBold(context, fontSize: 12, color: color);
  static TextStyle xsBold(BuildContext context, {Color? color}) =>
      sBold(context, fontSize: 12, color: color);

  // Small
  static TextStyle sRegularSize(BuildContext context, {Color? color}) =>
      sRegular(context, fontSize: 14, color: color);
  static TextStyle sSemiBoldSize(BuildContext context, {Color? color}) =>
      sSemiBold(context, fontSize: 14, color: color);
  static TextStyle sBoldSize(BuildContext context, {Color? color}) =>
      sBold(context, fontSize: 14, color: color);

  // Medium
  static TextStyle mRegular(BuildContext context, {Color? color}) =>
      sRegular(context, fontSize: 16, color: color);
  static TextStyle mSemiBold(BuildContext context, {Color? color}) =>
      sSemiBold(context, fontSize: 16, color: color);
  static TextStyle mBold(BuildContext context, {Color? color}) =>
      sBold(context, fontSize: 16, color: color);

  // Large
  static TextStyle lRegular(BuildContext context, {Color? color}) =>
      sRegular(context, fontSize: 20, color: color);
  static TextStyle lSemiBold(BuildContext context, {Color? color}) =>
      sSemiBold(context, fontSize: 20, color: color);
  static TextStyle lBold(BuildContext context, {Color? color}) =>
      sBold(context, fontSize: 20, color: color);

  // XL
  static TextStyle xlRegular(BuildContext context, {Color? color}) =>
      sRegular(context, fontSize: 24, color: color);
  static TextStyle xlSemiBold(BuildContext context, {Color? color}) =>
      sSemiBold(context, fontSize: 24, color: color);
  static TextStyle xlBold(BuildContext context, {Color? color}) =>
      sBold(context, fontSize: 24, color: color);

  // XXL
  static TextStyle xxlRegular(BuildContext context, {Color? color}) =>
      sRegular(context, fontSize: 32, color: color);
  static TextStyle xxlSemiBold(BuildContext context, {Color? color}) =>
      sSemiBold(context, fontSize: 32, color: color);
  static TextStyle xxlBold(BuildContext context, {Color? color}) =>
      sBold(context, fontSize: 32, color: color);

  // XXXL
  static TextStyle xxxlRegular(BuildContext context, {Color? color}) =>
      sRegular(context, fontSize: 40, color: color);
  static TextStyle xxxlSemiBold(BuildContext context, {Color? color}) =>
      sSemiBold(context, fontSize: 40, color: color);
  static TextStyle xxxlBold(BuildContext context, {Color? color}) =>
      sBold(context, fontSize: 40, color: color);

  // Huge
  static TextStyle hugeRegular(BuildContext context, {Color? color}) =>
      sRegular(context, fontSize: 48, color: color);
  static TextStyle hugeSemiBold(BuildContext context, {Color? color}) =>
      sSemiBold(context, fontSize: 48, color: color);
  static TextStyle hugeBold(BuildContext context, {Color? color}) =>
      sBold(context, fontSize: 48, color: color);

  // Giant
  static TextStyle giantRegular(BuildContext context, {Color? color}) =>
      sRegular(context, fontSize: 60, color: color);
  static TextStyle giantSemiBold(BuildContext context, {Color? color}) =>
      sSemiBold(context, fontSize: 60, color: color);
  static TextStyle giantBold(BuildContext context, {Color? color}) =>
      sBold(context, fontSize: 60, color: color);

  // -------------------------
  // Semantic usage
  // -------------------------
  static TextStyle headline1(BuildContext context, {Color? color}) => giantBold(context, color: color);
  static TextStyle headline2(BuildContext context, {Color? color}) => hugeBold(context, color: color);
  static TextStyle headline3(BuildContext context, {Color? color}) => xxlSemiBold(context, color: color);

  static TextStyle bodyText1(BuildContext context, {Color? color}) => mRegular(context, color: color);
  static TextStyle bodyText2(BuildContext context, {Color? color}) =>
      sRegularSize(context, color: color);

  static TextStyle button(BuildContext context, {Color? color}) => mBold(context, color: color);
  static TextStyle caption(BuildContext context, {Color? color}) => xsRegular(context, color: color);
  static TextStyle footnote(BuildContext context, {Color? color}) => xsRegular(context, color: color);
  static TextStyle overline(BuildContext context, {Color? color}) =>
      xsRegular(context, color: color?.withOpacity(0.7));
}
