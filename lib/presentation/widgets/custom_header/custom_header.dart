import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:untitled/core/app_textstyle/appTextStyle.dart';
import 'package:untitled/core/app_theme/app_colors/appcolors.dart';

class CustomHeaderWidget extends StatelessWidget {
  final int currentPage;
  final Function(int) onPageSelected;

  const CustomHeaderWidget({super.key, required this.currentPage, required this.onPageSelected});

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<AppColors>()!;

    final List<String> options = ['Home', 'Product', 'Service', 'About Us'];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 300.0, vertical: 10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(0), // Optional: if you want square edges
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 16),
            decoration: BoxDecoration(
              color: appColors.appPrimary.withOpacity(0.1), // subtle translucent
              border: const Border(bottom: BorderSide(color: Colors.white24, width: 0.5)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: options.asMap().entries.map((entry) {
                final index = entry.key;
                final label = entry.value;
                final isSelected = index == currentPage;

                return GestureDetector(
                  onTap: () => onPageSelected(index),
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    decoration: isSelected
                        ? BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(8),
                          )
                        : null,
                    child: Text(
                      label,
                      style: AppTextStyle.sRegular(
                        context: context,
                        color: isSelected ? Colors.white : Colors.white70,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
