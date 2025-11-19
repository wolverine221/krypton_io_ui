import 'package:flutter/material.dart';
import 'package:untitled/core/app_textstyle/appTextStyle.dart';
import 'package:untitled/core/app_theme/app_colors/appcolors.dart';
import 'package:untitled/presentation/widgets/parallax_headphone/parallaxheadphone.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<AppColors>()!;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // LEFT LABELS ----------------------------------------------
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _FeatureText(
                title: "Bluetooth 5.3",
                subtitle: "Stable connection up to 10m",
                color: appColors.textBlack!,
              ),
              const SizedBox(height: 40),
              _FeatureText(
                title: "Active Noise Cancel",
                subtitle: "Block ambient noise instantly",
                color: appColors.textBlack!,
              ),
            ],
          ),

          // CENTER 3D HEADPHONE ---------------------------------------
          SizedBox(
            width: 420,
            height: 430,
            child: ParallaxHeadphone(
              // image: AppIc.headphonenobg,
            ),
          ),

          // RIGHT LABELS ----------------------------------------------
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              _FeatureText(
                title: "20hr Battery",
                subtitle: "All-day listening comfort",
                alignRight: true,
                color: appColors.textBlack!,
              ),
              const SizedBox(height: 40),
              _FeatureText(
                title: "Premium Cushion",
                subtitle: "Soft, breathable earcups",
                alignRight: true,
                color: appColors.textBlack!,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _FeatureText extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool alignRight;
  final Color color;

  const _FeatureText({
    required this.title,
    required this.subtitle,
    this.alignRight = false,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 350),
      padding: const EdgeInsets.only(bottom: 8),
      child: Column(
        crossAxisAlignment:
        alignRight ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            title,
            textAlign: alignRight ? TextAlign.right : TextAlign.left,
            style: AppTextStyle.subtitle1(
              context: context,
              color: color,
            ).copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 6),
          Text(
            subtitle,
            textAlign: alignRight ? TextAlign.right : TextAlign.left,
            style: AppTextStyle.mRegular(
              context: context,
              color: color.withOpacity(0.8),
            ).copyWith(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
