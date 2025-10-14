import 'package:flutter/material.dart';
import 'package:untitled/core/app_textstyle/appTextStyle.dart';
import 'package:untitled/core/app_theme/app_colors/appcolors.dart';
import 'package:untitled/presentation/widgets/CustomButton/CustomButton.dart';
import 'package:untitled/presentation/widgets/CustomGradient/CustomGradient.dart';
import 'package:untitled/presentation/widgets/TextWidget/Text_Widget.dart';

import '../../widgets/CustomContainer/CustomContainer.dart';

class PageSeven extends StatelessWidget {
  const PageSeven({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<AppColors>()!;

    return CustomGradient(
      colors: [appColors.gradientBg, appColors.backgroundColor],
      child: CustomContainer(
        child: Column(
          children: [
            const Expanded(flex: 1, child: SizedBox()),

            // Title
            TextWidget(
              text: "Contact Our Team",
              textAlign: TextAlign.center,
              style: AppTextStyle.headline1(context: context, color: appColors.textBlack),
            ),
            const SizedBox(height: 16),

            // Subtitle
            TextWidget(
              text: "We're here to help you with global support, anytime you need.",
              textAlign: TextAlign.center,
              style: AppTextStyle.bodyText1(context: context, color: appColors.subTextBlack),
            ),

            const SizedBox(height: 40),

            // Contact cards
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 24,
              runSpacing: 24,
              children: [
                _buildContactCard(
                  context,
                  icon: Icons.email_outlined,
                  title: "Email",
                  value: "support@yourcompany.com",
                ),
                _buildContactCard(
                  context,
                  icon: Icons.phone_outlined,
                  title: "Phone",
                  value: "+1 (800) 123-4567",
                ),
                _buildContactCard(
                  context,
                  icon: Icons.location_on_outlined,
                  title: "Office",
                  value: "San Francisco, USA",
                ),
              ],
            ),

            const SizedBox(height: 48),

            // Button
            CustomButton(
              text: "Get in Touch",
              onTap: () {},
              backgroundColor: appColors.appPrimary,
              textColor: appColors.backgroundColor,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              borderRadius: 8,
            ),

            const Expanded(flex: 1, child: SizedBox()),
          ],
        ),
      ),
    );
  }

  Widget _buildContactCard(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String value,
  }) {
    final appColors = Theme.of(context).extension<AppColors>()!;

    return Container(
      width: 240,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: appColors.cardBg,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 10, offset: Offset(0, 4))],
      ),
      child: Column(
        children: [
          Icon(icon, size: 36, color: appColors.appPrimary),
          const SizedBox(height: 16),
          TextWidget(
            text: title,
            style: AppTextStyle.bodyText1(context: context, color: appColors.textBlack),
          ),
          const SizedBox(height: 8),
          TextWidget(
            text: value,
            textAlign: TextAlign.center,
            style: AppTextStyle.bodyText2(context: context, color: appColors.textSecondary),
          ),
        ],
      ),
    );
  }
}
