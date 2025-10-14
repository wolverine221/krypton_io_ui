import 'package:flutter/material.dart';
import 'package:untitled/core/app_theme/app_colors/appcolors.dart';
import 'package:untitled/presentation/widgets/CustomButton/CustomButton.dart';

class DivisionContainer extends StatelessWidget {
  final String topText;
  final String lightSectionText;
  final String darkSectionText;
  final VoidCallback onButtonPressed;
  final double height; // new height parameter for container height control

  const DivisionContainer({
    super.key,
    required this.topText,
    required this.lightSectionText,
    required this.darkSectionText,
    required this.onButtonPressed,
    this.height = 150, // default height
  });

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<AppColors>()!;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      color: appColors.cardBg,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Top Text Section
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Text(
              topText,
              style: TextStyle(color: appColors.textPrimary, fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),

          SizedBox(
            height: height,
            child: Row(
              children: [
                // Left Light Gradient Section
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          appColors.backgroundColor,
                          appColors.appPrimary20.withOpacity(0.5),
                          appColors.backgroundColor,
                        ],
                        stops: [0.0, 0.5, 1.0],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            lightSectionText,
                            style: TextStyle(color: appColors.textPrimary, fontSize: 16),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(width: 12),
                        CustomButton(
                          text: 'Action',
                          onPressed: onButtonPressed,
                          backgroundColor: appColors.appPrimary,
                          textColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(width: 16),

                // Right Dark Gradient Section
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          appColors.backgroundColorBlack,
                          appColors.appPrimary20.withOpacity(0.7),
                          appColors.backgroundColorBlack,
                        ],
                        stops: [0.0, 0.5, 1.0],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            darkSectionText,
                            style: TextStyle(color: appColors.white, fontSize: 16),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(width: 12),
                        CustomButton(
                          text: 'Action',
                          onPressed: onButtonPressed,
                          backgroundColor: appColors.appPrimaryLight,
                          textColor: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
