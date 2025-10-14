import 'package:flutter/material.dart';
import 'package:untitled/core/app_textstyle/appTextStyle.dart';
import 'package:untitled/core/app_theme/app_colors/appcolors.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<AppColors>()!;
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: appColors.lightBlue,
            child: Center(
              child: Text(
                "Page 2 - Section 1",
                style: AppTextStyle.lBold(context: context, color: appColors.appPrimary),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: appColors.sheetBgPrimary,
            child: Center(
              child: Text(
                "Page 2 - Section 2",
                style: AppTextStyle.mSemiBold(context: context, color: appColors.textBlack),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: appColors.appPrimaryLight,
            child: Center(
              child: Text(
                "Page 2 - Section 3",
                style: AppTextStyle.sBoldSize(context: context, color: appColors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// Repeat similarly for PageFour, PageFive, PageSix, PageSeven
