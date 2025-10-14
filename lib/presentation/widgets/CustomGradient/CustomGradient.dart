import 'package:flutter/material.dart';
import 'package:untitled/core/app_theme/app_colors/appcolors.dart';

class CustomGradient extends StatelessWidget {
  final Widget child;
  final List<Color>? colors; // Optional override colors
  final Alignment begin;
  final Alignment end;

  const CustomGradient({
    Key? key,
    required this.child,
    this.colors,
    this.begin = Alignment.topCenter,
    this.end = Alignment.bottomCenter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<AppColors>()!;

    // Use passed colors or fallback to default gradient colors from AppColors
    final gradientColors =
        colors ??
        [appColors.backgroundColor, appColors.appPrimary20.withOpacity(0.5), appColors.backgroundColor];

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: begin,
          end: end,
          colors: gradientColors,
          stops: _calculateStops(gradientColors.length),
        ),
      ),
      child: child,
    );
  }

  // Helper to calculate even stops based on colors count
  List<double> _calculateStops(int count) {
    if (count <= 1) return [0.0];
    final step = 1.0 / (count - 1);
    return List.generate(count, (index) => index * step);
  }
}
