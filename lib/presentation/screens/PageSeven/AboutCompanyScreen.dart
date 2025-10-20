import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/core/app_icons/app_icons.dart';
import 'package:untitled/core/app_theme/app_colors/appcolors.dart';
import 'package:untitled/core/app_textstyle/appTextStyle.dart';
import 'package:untitled/core/app_universal/app_universal.dart';
import 'package:untitled/presentation/widgets/CustomTextFormField/CustomTextFormField.dart';
import 'package:untitled/presentation/widgets/custom_container/custom_container.dart';

class AboutCompanyPage extends StatelessWidget {
  const AboutCompanyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<AppColors>()!;
    final emailController = TextEditingController();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 60),

        /// ===== Subscribe / Call-to-action Section =====
        CustomContainer(
          outerPadding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 60),
          color: appColors.backgroundColorBlack,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /// Left Text
              Expanded(
                flex: 2,
                child: Text(
                  "Ready to Get\nOur New Stuff?",
                  style: AppTextStyle.mSemiBold(context: context, color: appColors.white),
                ),
              ),
              const SizedBox(width: 24),

              /// Email input + Button
              Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Expanded(
                      child: CustomTextFormField(
                        labelText: "",
                        hintText: "Your Email",
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    const SizedBox(width: 16),
                    IconButton(
                      onPressed: () {
                        debugPrint("Subscribe: ${emailController.text}");
                      },
                      icon: Icon(
                        CupertinoIcons.arrow_right_circle,
                        color: appColors.appPrimary,
                        size: 40,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        /// ===== Footer Section =====
        Container(
          color: appColors.backgroundColor.withOpacity(0.4),
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              footerColumns(context, appColors),
              const SizedBox(height: 40),
              socialRow(appColors),
              const SizedBox(height: 30),
              Divider(color: Colors.white54),
              copyrightText(context, appColors),
            ],
          ),
        ),
      ],
    );
  }

  /// Footer Columns
  Widget footerColumns(BuildContext context, AppColors appColors) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 700;
        return Flex(
          direction: isMobile ? Axis.vertical : Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About",
                    style: AppTextStyle.mBold(context: context, color: appColors.textBlack),
                  ),
                  const SizedBox(height: 10),
                  footerText(context, "Blog", appColors),
                  footerText(context, "Meet The Team", appColors),
                  footerText(context, "Contact Us", appColors),
                ],
              ),
            ),
            if (!isMobile) const SizedBox(width: 40),
            Flexible(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Support",
                    style: AppTextStyle.mBold(context: context, color: appColors.textBlack),
                  ),
                  const SizedBox(height: 10),
                  footerText(context, "Customer Support", appColors),
                  footerText(context, "Shipping", appColors),
                  footerText(context, "Returns", appColors),
                  footerText(context, "FAQ", appColors),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  Widget footerText(BuildContext context, String text, AppColors appColors) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Text(
        text,
        style: AppTextStyle.xsRegular(context: context, color: appColors.subTextBlack),
      ),
    );
  }

  Widget socialRow(AppColors appColors) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Image.asset(AppIcons.apple, height: 24, width: 24, color: Colors.white),
        const SizedBox(width: 12),
        SvgPicture.asset(
          AppIconsSvg.facebookSquare,
          height: 24,
          width: 24,
          colorFilter: ColorFilter.mode(appColors.textBlack, BlendMode.srcIn),
        ),
        const SizedBox(width: 12),
        SvgPicture.asset(
          AppIconsSvg.facebookMessenger,
          height: 24,
          width: 24,
          colorFilter: ColorFilter.mode(appColors.textBlack, BlendMode.srcIn),
        ),
        const SizedBox(width: 12),
        Image.asset(AppIcons.profilePlaceHolder, height: 24, width: 24, fit: BoxFit.contain),
      ],
    );
  }

  Widget copyrightText(BuildContext context, AppColors appColors) {
    return Text(
      "© 2026 ${AppUniversal.companyName} All Rights Reserved.",
      style: AppTextStyle.xxsRegular(context: context, color: appColors.textBlack),
    );
  }
}
