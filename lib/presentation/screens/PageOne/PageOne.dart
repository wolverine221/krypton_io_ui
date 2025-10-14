import 'package:flutter/material.dart';
import 'package:untitled/core/app_textstyle/appTextStyle.dart';
import 'package:untitled/presentation/widgets/TextWidget/Text_Widget.dart';
import 'package:untitled/presentation/widgets/custom_container/custom_container.dart';
import 'package:untitled/core/app_theme/app_colors/appcolors.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<AppColors>()!;
    return Column(
      children: [
        TextWidget(
          text: "Page One - Bottom Section",
          style: AppTextStyle.bodyText2(context: context, color: appColors.textBlack),
        ),
        const SizedBox(height: 24),
        TextWidget(
          text: "Page One - Bottom Section",
          style: AppTextStyle.bodyText2(context: context, color: appColors.textBlack),
        ),
        const SizedBox(height: 24),
        TextWidget(
          text: "Page One - Bottom Section",
          style: AppTextStyle.bodyText2(context: context, color: appColors.textBlack),
        ),
      ],
    );
  }
}
