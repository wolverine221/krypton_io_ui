import 'package:flutter/material.dart';

class LightColors {
  static const bool isDarkMode = false;

  static const Color textBlack = Color(0xff323232);
  static const Color subTextBlack = Color(0xff535353);
  static const Color blackRed = Color(0xff676262);
  static const Color dimBlack = Color(0xff7a7a7a);
  static const Color labelGray = Color(0xff999999);
  static const Color textGray = Color(0xffA4A4A4);
  static const Color whiteBlue = Color(0xffd8effa);
  static const Color lineGray = Color(0xffcbbfbf);
  static const Color bgGray = Color(0xfff5f4f4);
  static const Color cardBg = Color(0xffF5F5F5);
  static const Color backgroundColor = Color(0xffffffff);
  static const Color gradientBg = Color(0xffd4dbde);
  static const Color textPrimary = Color(0xff211f1f);
  static const Color lightPrimaryBase = Color(0xffd2bfc4);

  static const Color backgroundColorBlack = Color(0xFF000000);
  static const Color appPrimary = Color(0xFFF2B82A);
  static const Color appPrimaryLight = Color(0xfff6dea2);
  static const Color appPrimaryDark = Color(0xFFC9380C);
  static const Color appPrimaryDarker = Color(0xFFD54114);
  static const Color appSecondary = Color(0xffDB6118);

  static const Color lightRed = Color(0xffE33C40);
  static const Color lightPink = Color(0xa1bce0f8);
  static const Color yellow = Color(0xffffc504);
  static const Color lightGrayPink = Color(0xc5a7c7d5);
  static const Color lightGreen = Color(0xff10D60F);
  static const Color darkerPrimary = Color(0xff650a00);
  static const Color appPrimarySecondary = Color(0xFF9F378B);
  static const Color darkestPrimary = Color(0xff330600);
  static const Color lightBlue = Color(0xffaae5ff);
  static const Color errorRed = Color(0xffE72C1D);
  static const Color textSecondary = Color(0xff5A5A5A);
  static const Color appPrimary20 = Color(0xff8aa5d1);
  static const Color sheetBgPrimary = Color(0xfff5f4f4);
  static const Color lightPrimary = Color(0xfff4f4f6);
  static const Color bgPrimary = Color(0xffffffff);
  static const Color white = Color(0xffffffff);
}

class DarkColors {
  static const bool isDarkMode = true;

  static const Color textBlack = Color(0xFFE0E0E0);
  static const Color subTextBlack = Color(0xFFB0B0B0);
  static const Color blackRed = Color(0xFFA59E9E);
  static const Color dimBlack = Color(0xFF8D8D8D);
  static const Color labelGray = Color(0xFF757575);
  static const Color textGray = Color(0xFF9E9E9E);
  static const Color whiteBlue = Color(0xFF1A3A4A);
  static const Color lineGray = Color(0xFF4A4444);
  static const Color bgGray = Color(0xFF121212);
  static const Color backgroundColorBlack = Color(0xFFFFFFFF);
  static const Color cardBg = Color(0xFF1E1E1E);
  static const Color backgroundColor = Color(0xFF121212);
  static const Color gradientBg = Color(0xFF2D3A3F);
  static const Color textPrimary = Color(0xFFE0E0E0);
  static const Color lightPrimaryBase = Color(0xFF3A2D31);

  static const Color appPrimary = Color(0xFFFFD54F);
  static const Color appPrimaryLight = Color(0xFFFFECB3);
  static const Color appPrimaryDark = Color(0xFFE65100);
  static const Color appPrimaryDarker = Color(0xFFBF360C);
  static const Color appSecondary = Color(0xFFFF7043);

  static const Color lightRed = Color(0xFFEF5350);
  static const Color lightPink = Color(0x4D7C9EB8);
  static const Color yellow = Color(0xFFFFD600);
  static const Color lightGrayPink = Color(0x8A6D7F8F);
  static const Color lightGreen = Color(0xFF69F0AE);
  static const Color darkerPrimary = Color(0xFF4E342E);
  static const Color appPrimarySecondary = Color(0xFFBA68C8);
  static const Color darkestPrimary = Color(0xFF3E2723);
  static const Color lightBlue = Color(0xFF4FC3F7);
  static const Color errorRed = Color(0xFFF44336);
  static const Color textSecondary = Color(0xFF9E9E9E);
  static const Color appPrimary20 = Color(0xFF5D7AA1);
  static const Color sheetBgPrimary = Color(0xFF1E1E1E);
  static const Color lightPrimary = Color(0xFF2D2D2D);
  static const Color bgPrimary = Color(0xFF121212);
  static const Color white = Color(0xFF121212);
}

class AppColors extends ThemeExtension<AppColors> {
  final Color backgroundColorBlack;
  final bool isDarkMode;
  final Color textBlack;
  final Color subTextBlack;
  final Color blackRed;
  final Color dimBlack;
  final Color labelGray;
  final Color textGray;
  final Color whiteBlue;
  final Color lineGray;
  final Color bgGray;
  final Color cardBg;
  final Color backgroundColor;
  final Color gradientBg;
  final Color textPrimary;
  final Color lightPrimaryBase;
  final Color appPrimary;
  final Color appPrimaryLight;
  final Color appPrimaryDark;
  final Color appPrimaryDarker;
  final Color appSecondary;
  final Color lightRed;
  final Color lightPink;
  final Color yellow;
  final Color lightGrayPink;
  final Color lightGreen;
  final Color darkerPrimary;
  final Color appPrimarySecondary;
  final Color darkestPrimary;
  final Color lightBlue;
  final Color errorRed;
  final Color textSecondary;
  final Color appPrimary20;
  final Color sheetBgPrimary;
  final Color lightPrimary;
  final Color bgPrimary;
  final Color white;

  AppColors({
    required this.isDarkMode,
    required this.textBlack,
    required this.subTextBlack,
    required this.blackRed,
    required this.dimBlack,
    required this.labelGray,
    required this.textGray,
    required this.whiteBlue,
    required this.lineGray,
    required this.bgGray,
    required this.backgroundColorBlack,
    required this.cardBg,
    required this.backgroundColor,
    required this.gradientBg,
    required this.textPrimary,
    required this.lightPrimaryBase,
    required this.appPrimary,
    required this.appPrimaryLight,
    required this.appPrimaryDark,
    required this.appPrimaryDarker,
    required this.appSecondary,
    required this.lightRed,
    required this.lightPink,
    required this.yellow,
    required this.lightGrayPink,
    required this.lightGreen,
    required this.darkerPrimary,
    required this.appPrimarySecondary,
    required this.darkestPrimary,
    required this.lightBlue,
    required this.errorRed,
    required this.textSecondary,
    required this.appPrimary20,
    required this.sheetBgPrimary,
    required this.lightPrimary,
    required this.bgPrimary,
    required this.white,
  });

  @override
  ThemeExtension<AppColors> copyWith({
    bool? isDarkMode,
    Color? textBlack,
    Color? subTextBlack,
    Color? blackRed,
    Color? dimBlack,
    Color? labelGray,
    Color? textGray,
    Color? whiteBlue,
    Color? lineGray,
    Color? bgGray,
    Color? cardBg,
    Color? backgroundColorBlack,
    Color? backgroundColor,
    Color? gradientBg,
    Color? textPrimary,
    Color? lightPrimaryBase,
    Color? appPrimary,
    Color? appPrimaryLight,
    Color? appPrimaryDark,
    Color? appPrimaryDarker,
    Color? appSecondary,
    Color? lightRed,
    Color? lightPink,
    Color? yellow,
    Color? lightGrayPink,
    Color? lightGreen,
    Color? darkerPrimary,
    Color? appPrimarySecondary,
    Color? darkestPrimary,
    Color? lightBlue,
    Color? errorRed,
    Color? textSecondary,
    Color? appPrimary20,
    Color? sheetBgPrimary,
    Color? lightPrimary,
    Color? bgPrimary,
    Color? white,
  }) {
    return AppColors(
      isDarkMode: isDarkMode ?? this.isDarkMode,
      textBlack: textBlack ?? this.textBlack,
      subTextBlack: subTextBlack ?? this.subTextBlack,
      blackRed: blackRed ?? this.blackRed,
      dimBlack: dimBlack ?? this.dimBlack,
      labelGray: labelGray ?? this.labelGray,
      textGray: textGray ?? this.textGray,
      whiteBlue: whiteBlue ?? this.whiteBlue,
      lineGray: lineGray ?? this.lineGray,
      backgroundColorBlack: backgroundColorBlack ?? this.backgroundColorBlack,
      bgGray: bgGray ?? this.bgGray,
      cardBg: cardBg ?? this.cardBg,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      gradientBg: gradientBg ?? this.gradientBg,
      textPrimary: textPrimary ?? this.textPrimary,
      lightPrimaryBase: lightPrimaryBase ?? this.lightPrimaryBase,
      appPrimary: appPrimary ?? this.appPrimary,
      appPrimaryLight: appPrimaryLight ?? this.appPrimaryLight,
      appPrimaryDark: appPrimaryDark ?? this.appPrimaryDark,
      appPrimaryDarker: appPrimaryDarker ?? this.appPrimaryDarker,
      appSecondary: appSecondary ?? this.appSecondary,
      lightRed: lightRed ?? this.lightRed,
      lightPink: lightPink ?? this.lightPink,
      yellow: yellow ?? this.yellow,
      lightGrayPink: lightGrayPink ?? this.lightGrayPink,
      lightGreen: lightGreen ?? this.lightGreen,
      darkerPrimary: darkerPrimary ?? this.darkerPrimary,
      appPrimarySecondary: appPrimarySecondary ?? this.appPrimarySecondary,
      darkestPrimary: darkestPrimary ?? this.darkestPrimary,
      lightBlue: lightBlue ?? this.lightBlue,
      errorRed: errorRed ?? this.errorRed,
      textSecondary: textSecondary ?? this.textSecondary,
      appPrimary20: appPrimary20 ?? this.appPrimary20,
      sheetBgPrimary: sheetBgPrimary ?? this.sheetBgPrimary,
      lightPrimary: lightPrimary ?? this.lightPrimary,
      bgPrimary: bgPrimary ?? this.bgPrimary,
      white: white ?? this.white,
    );
  }

  @override
  ThemeExtension<AppColors> lerp(covariant ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) {
      return this;
    }

    return AppColors(
      isDarkMode: t < 0.5 ? isDarkMode : other.isDarkMode,
      textBlack: Color.lerp(textBlack, other.textBlack, t)!,
      subTextBlack: Color.lerp(subTextBlack, other.subTextBlack, t)!,
      blackRed: Color.lerp(blackRed, other.blackRed, t)!,
      dimBlack: Color.lerp(dimBlack, other.dimBlack, t)!,
      labelGray: Color.lerp(labelGray, other.labelGray, t)!,
      textGray: Color.lerp(textGray, other.textGray, t)!,
      whiteBlue: Color.lerp(whiteBlue, other.whiteBlue, t)!,
      lineGray: Color.lerp(lineGray, other.lineGray, t)!,
      bgGray: Color.lerp(bgGray, other.bgGray, t)!,
      backgroundColorBlack: Color.lerp(backgroundColorBlack, other.backgroundColorBlack, t)!,
      cardBg: Color.lerp(cardBg, other.cardBg, t)!,
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
      gradientBg: Color.lerp(gradientBg, other.gradientBg, t)!,
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t)!,
      lightPrimaryBase: Color.lerp(lightPrimaryBase, other.lightPrimaryBase, t)!,
      appPrimary: Color.lerp(appPrimary, other.appPrimary, t)!,
      appPrimaryLight: Color.lerp(appPrimaryLight, other.appPrimaryLight, t)!,
      appPrimaryDark: Color.lerp(appPrimaryDark, other.appPrimaryDark, t)!,
      appPrimaryDarker: Color.lerp(appPrimaryDarker, other.appPrimaryDarker, t)!,
      appSecondary: Color.lerp(appSecondary, other.appSecondary, t)!,
      lightRed: Color.lerp(lightRed, other.lightRed, t)!,
      lightPink: Color.lerp(lightPink, other.lightPink, t)!,
      yellow: Color.lerp(yellow, other.yellow, t)!,
      lightGrayPink: Color.lerp(lightGrayPink, other.lightGrayPink, t)!,
      lightGreen: Color.lerp(lightGreen, other.lightGreen, t)!,
      darkerPrimary: Color.lerp(darkerPrimary, other.darkerPrimary, t)!,
      appPrimarySecondary: Color.lerp(appPrimarySecondary, other.appPrimarySecondary, t)!,
      darkestPrimary: Color.lerp(darkestPrimary, other.darkestPrimary, t)!,
      lightBlue: Color.lerp(lightBlue, other.lightBlue, t)!,
      errorRed: Color.lerp(errorRed, other.errorRed, t)!,
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t)!,
      appPrimary20: Color.lerp(appPrimary20, other.appPrimary20, t)!,
      sheetBgPrimary: Color.lerp(sheetBgPrimary, other.sheetBgPrimary, t)!,
      lightPrimary: Color.lerp(lightPrimary, other.lightPrimary, t)!,
      bgPrimary: Color.lerp(bgPrimary, other.bgPrimary, t)!,
      white: Color.lerp(white, other.white, t)!,
    );
  }
}
