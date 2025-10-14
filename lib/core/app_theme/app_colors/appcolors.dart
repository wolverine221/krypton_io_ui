import 'package:flutter/material.dart';

class LightColors {
  static const bool isDarkMode = false;

  // Text Colors
  static const Color textBlack = Color(0xFF1F2937); // Slate
  static const Color subTextBlack = Color(0xFF4B5563); // Cool gray
  static const Color textGray = Color(0xFF6B7280); // Gray
  static const Color textSecondary = textGray;

  // Backgrounds
  static const Color backgroundColor = Color(0xFFF9FAFB);
  static const Color bgPrimary = Color(0xFFFFFFFF);
  static const Color cardBg = Color(0xFFFFFFFF);
  static const Color bgGray = Color(0xFFF3F4F6); // Soft gray
  static const Color whiteBlue = Color(0xFFF0F9FF); // Light blue-white
  static const Color sheetBgPrimary = Color(0xFFE5E7EB); // Lightest gray

  // Lines and borders
  static const Color lineGray = Color(0xFFD1D5DB);

  // Primary & Secondary colors (teal/green)
  static const Color appPrimary = Color(0xFF00BFA6); // Slightly softer teal
  static const Color appPrimaryLight = Color(0xFF66FFCC);
  static const Color appPrimaryDark = Color(0xFF009E88);
  static const Color appPrimaryDarker = Color(0xFF00695C);
  static const Color appPrimary20 = Color(0x3300BFA6);

  static const Color appSecondary = Color(0xFF38BDF8); // Sky blue
  static const Color appPrimarySecondary = Color(0xFF00D2B2);

  // Accent colors
  static const Color lightRed = Color(0xFFDC2626);
  static const Color lightGreen = Color(0xFF16A34A);
  static const Color yellow = Color(0xFFEAB308);
  static const Color errorRed = Color(0xFFB91C1C);
  static const Color lightBlue = Color(0xFF60A5FA);

  // Others
  static const Color blackRed = Color(0xFF6B7280);
  static const Color dimBlack = Color(0xFF9CA3AF);
  static const Color labelGray = Color(0xFF9CA3AF);
  static const Color lightPink = Color(0xFFFDF2F8);
  static const Color lightGrayPink = Color(0xFFF3F4F6);
  static const Color darkerPrimary = Color(0xFF334155);
  static const Color darkestPrimary = Color(0xFF1E293B);
  static const Color lightPrimary = Color(0xFFE0F2F1);
  static const Color gradientBg = Color(0xFFF1F5F9);
  static const Color backgroundColorBlack = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);

  static const Color textPrimary = textBlack; // Or any other appropriate value
  static const Color lightPrimaryBase = Color(0xFF1E1E1E); // Use same as in dark if needed
}

class DarkColors {
  static const bool isDarkMode = true;

  // Text Colors
  static const Color textBlack = Color(0xFFE0E0E0); // Almost white
  static const Color subTextBlack = Color(0xFFB0B0B0);
  static const Color textGray = Color(0xFF9E9E9E);
  static const Color textSecondary = Color(0xFF9CA3AF); // Cool gray

  // Backgrounds
  static const Color backgroundColor = Color(0xFF0D1117); // Main background
  static const Color bgPrimary = Color(0xFF0D1117); // Same as background
  static const Color cardBg = Color(0xFF161B22); // Slightly lighter for cards
  static const Color bgGray = Color(0xFF1F2937); // Neutral gray
  static const Color sheetBgPrimary = cardBg;

  // Lines and borders
  static const Color lineGray = Color(0xFF2A2E35);

  // Primary & Secondary colors (neon green style)
  static const Color appPrimary = Color(0xFF00FFB3); // Neon green
  static const Color appPrimaryLight = Color(0xFF66FFD6);
  static const Color appPrimaryDark = Color(0xFF00D49A);
  static const Color appPrimaryDarker = Color(0xFF009F73);
  static const Color appPrimary20 = Color(0x3300FFB3);

  static const Color appSecondary = Color(0xFF38BDF8); // Soft cyan/blue
  static const Color appPrimarySecondary = Color(0xFF00D2B2);

  // Glow and highlight
  static const Color whiteBlue = Color(0xFF1A2A3A);
  static const Color gradientBg = Color(0xFF0E1E25); // Dark gradient background

  // Other accent colors
  static const Color lightRed = Color(0xFFEF5350);
  static const Color lightGreen = Color(0xFF22C55E);
  static const Color yellow = Color(0xFFEAB308);
  static const Color errorRed = Color(0xFFF44336);
  static const Color lightBlue = Color(0xFF60A5FA);

  // Not really needed in dark mode but kept for ThemeExtension
  static const Color white = Color(0xFFFFFFFF);
  static const Color lightPrimary = Color(0xFF101010);

  static const Color blackRed = Color(0xFF7C7C7C);
  static const Color dimBlack = Color(0xFF444444);
  static const Color labelGray = Color(0xFF666666);
  static const Color lightPink = Color(0x4D332211);
  static const Color lightGrayPink = Color(0x8A332211);
  static const Color darkerPrimary = Color(0xFF4E342E);
  static const Color darkestPrimary = Color(0xFF1C1C1C);
  static const Color backgroundColorBlack = Color(0xFF000000);

  static const Color textPrimary = textBlack;
  static const Color lightPrimaryBase = Color(0xFF1E1E1E);
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

  factory AppColors.light() {
    return AppColors(
      isDarkMode: LightColors.isDarkMode,
      textBlack: LightColors.textBlack,
      subTextBlack: LightColors.subTextBlack,
      blackRed: LightColors.blackRed,
      dimBlack: LightColors.dimBlack,
      labelGray: LightColors.labelGray,
      textGray: LightColors.textGray,
      whiteBlue: LightColors.whiteBlue,
      lineGray: LightColors.lineGray,
      bgGray: LightColors.bgGray,
      backgroundColorBlack: LightColors.backgroundColorBlack,
      cardBg: LightColors.cardBg,
      backgroundColor: LightColors.backgroundColor,
      gradientBg: LightColors.gradientBg,
      textPrimary: LightColors.textPrimary,
      lightPrimaryBase: LightColors.lightPrimaryBase,
      appPrimary: LightColors.appPrimary,
      appPrimaryLight: LightColors.appPrimaryLight,
      appPrimaryDark: LightColors.appPrimaryDark,
      appPrimaryDarker: LightColors.appPrimaryDarker,
      appSecondary: LightColors.appSecondary,
      lightRed: LightColors.lightRed,
      lightPink: LightColors.lightPink,
      yellow: LightColors.yellow,
      lightGrayPink: LightColors.lightGrayPink,
      lightGreen: LightColors.lightGreen,
      darkerPrimary: LightColors.darkerPrimary,
      appPrimarySecondary: LightColors.appPrimarySecondary,
      darkestPrimary: LightColors.darkestPrimary,
      lightBlue: LightColors.lightBlue,
      errorRed: LightColors.errorRed,
      textSecondary: LightColors.textSecondary,
      appPrimary20: LightColors.appPrimary20,
      sheetBgPrimary: LightColors.sheetBgPrimary,
      lightPrimary: LightColors.lightPrimary,
      bgPrimary: LightColors.bgPrimary,
      white: LightColors.white,
    );
  }

  factory AppColors.dark() {
    return AppColors(
      isDarkMode: DarkColors.isDarkMode,
      textBlack: DarkColors.textBlack,
      subTextBlack: DarkColors.subTextBlack,
      blackRed: DarkColors.blackRed,
      dimBlack: DarkColors.dimBlack,
      labelGray: DarkColors.labelGray,
      textGray: DarkColors.textGray,
      whiteBlue: DarkColors.whiteBlue,
      lineGray: DarkColors.lineGray,
      bgGray: DarkColors.bgGray,
      backgroundColorBlack: DarkColors.backgroundColorBlack,
      cardBg: DarkColors.cardBg,
      backgroundColor: DarkColors.backgroundColor,
      gradientBg: DarkColors.gradientBg,
      textPrimary: DarkColors.textPrimary,
      lightPrimaryBase: DarkColors.lightPrimaryBase,
      appPrimary: DarkColors.appPrimary,
      appPrimaryLight: DarkColors.appPrimaryLight,
      appPrimaryDark: DarkColors.appPrimaryDark,
      appPrimaryDarker: DarkColors.appPrimaryDarker,
      appSecondary: DarkColors.appSecondary,
      lightRed: DarkColors.lightRed,
      lightPink: DarkColors.lightPink,
      yellow: DarkColors.yellow,
      lightGrayPink: DarkColors.lightGrayPink,
      lightGreen: DarkColors.lightGreen,
      darkerPrimary: DarkColors.darkerPrimary,
      appPrimarySecondary: DarkColors.appPrimarySecondary,
      darkestPrimary: DarkColors.darkestPrimary,
      lightBlue: DarkColors.lightBlue,
      errorRed: DarkColors.errorRed,
      textSecondary: DarkColors.textSecondary,
      appPrimary20: DarkColors.appPrimary20,
      sheetBgPrimary: DarkColors.sheetBgPrimary,
      lightPrimary: DarkColors.lightPrimary,
      bgPrimary: DarkColors.bgPrimary,
      white: DarkColors.white,
    );
  }

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
