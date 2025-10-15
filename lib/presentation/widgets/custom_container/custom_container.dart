import 'package:flutter/material.dart';
import 'package:untitled/core/app_theme/app_colors/appcolors.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? outerPadding;
  final double? radius;
  final int flex;

  const CustomContainer({
    super.key,
    required this.child,
    this.color,
    this.flex = 1,
    this.padding,
    this.radius,
    this.outerPadding,
  });

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<AppColors>()!;
    return Expanded(
      flex: flex,
      child: Padding(
        padding: outerPadding ?? EdgeInsets.zero,
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: padding ?? EdgeInsets.symmetric(horizontal: 16, vertical: 10.0),
          decoration: BoxDecoration(
            color: color ?? appColors.bgGray,
            borderRadius: BorderRadius.circular(radius ?? 12),
            boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8, offset: const Offset(0, 4))],
          ),
          child: child,
        ),
      ),
    );
  }
}
