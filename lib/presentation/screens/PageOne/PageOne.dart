import 'package:flutter/material.dart';
import 'package:untitled/core/app_icons/app_icons.dart';
import 'package:untitled/core/app_textstyle/appTextStyle.dart';
import 'package:untitled/core/app_theme/app_colors/appcolors.dart';
import 'package:untitled/presentation/widgets/TextWidget/Text_Widget.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key, required this.pageOffset});

  /// The current PageView scroll offset (0..1..2...)
  final double pageOffset;

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<AppColors>()!;

    // Animate opacity and slide based on page offset
    final opacity = (1 - (pageOffset - 0).abs()).clamp(0.0, 1.0);
    final offsetX = 50 * (1 - opacity); // slide in from right

    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Lightning Product Image
          Transform.translate(
            offset: Offset(offsetX, 0),
            child: Opacity(
              opacity: opacity,
              child: Image.asset(AppIcons.spakerNoBG, width: 500, height: 500, fit: BoxFit.contain),
            ),
          ),

          const SizedBox(width: 30),

          // Product Name & Description
          Transform.translate(
            offset: Offset(offsetX, 0),
            child: Opacity(
              opacity: opacity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    text: "KG-IP",
                    style: AppTextStyle.h4(context: context, color: appColors.textBlack),
                  ),
                  const SizedBox(height: 10),
                  TextWidget(
                    text: "High-performance lightning solution for modern projects.",
                    style: AppTextStyle.bodyText2(context: context, color: appColors.textBlack),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
