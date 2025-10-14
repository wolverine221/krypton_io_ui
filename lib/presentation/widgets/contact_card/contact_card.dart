import 'package:flutter/material.dart';
import 'package:untitled/core/app_textstyle/appTextStyle.dart';
import 'package:untitled/core/app_theme/app_colors/appcolors.dart';
import 'package:untitled/presentation/widgets/TextWidget/Text_Widget.dart';

class ContactCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const ContactCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>()!;
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 200,
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(color: colors.cardBg, borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 32, color: colors.appPrimary),
            SizedBox(height: 16),
            TextWidget(
              text: title,
              style: AppTextStyle.bodyText1(context: context, color: colors.textBlack),
            ),
            SizedBox(height: 8),
            TextWidget(
              text: subtitle,
              style: AppTextStyle.bodyText2(context: context, color: colors.textSecondary),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
