import 'package:flutter/material.dart';
import 'package:untitled/core/app_textstyle/appTextStyle.dart';
import 'package:untitled/core/app_theme/app_colors/appcolors.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<AppColors>()!;
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.transparent,
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
            color: Colors.transparent,
            child: Center(
              child: Text(
                "Page 2 - Section 2",
                style: AppTextStyle.mSemiBold(context: context, color: appColors.textBlack),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
