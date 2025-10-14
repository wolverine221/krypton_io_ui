import 'package:flutter/material.dart';
import 'package:untitled/core/app_textstyle/appTextStyle.dart';
import 'package:untitled/core/app_theme/app_colors/appcolors.dart';

class PageFive extends StatelessWidget {
  const PageFive({super.key});

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<AppColors>()!;
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: appColors.bgPrimary,
            child: Center(
              child: Text(
                "Page 3 - Section 1",
                style: AppTextStyle.lBold(context: context, color: appColors.appPrimary),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: appColors.cardBg,
            child: Center(
              child: Text(
                "Page 3 - Section 2",
                style: AppTextStyle.mSemiBold(context: context, color: appColors.textBlack),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: appColors.backgroundColorBlack,
            child: Center(
              child: Text(
                "Page 3 - Section 3",
                style: AppTextStyle.sBoldSize(context: context, color: appColors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
