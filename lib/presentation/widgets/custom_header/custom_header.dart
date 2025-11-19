import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:untitled/core/app_icons/app_icons.dart';
import 'package:untitled/core/app_textstyle/appTextStyle.dart';
import 'package:untitled/core/app_theme/app_colors/appcolors.dart';

class CustomHeaderWidget extends StatefulWidget {
  final int currentPage;
  final Function(int) onPageSelected;

  const CustomHeaderWidget({super.key, required this.currentPage, required this.onPageSelected});

  @override
  State<CustomHeaderWidget> createState() => _CustomHeaderWidgetState();
}

class _CustomHeaderWidgetState extends State<CustomHeaderWidget> {
  bool _isExpanded = false;
  int _hoveredIndex = -1;

  final List<String> options = ['Home', 'Products', 'Services', 'About Us', 'Contact'];

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<AppColors>()!;
    final bool isMobile = MediaQuery.of(context).size.width < 800;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeOut,
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
      // decoration: BoxDecoration(color: appColors.appPrimary.withOpacity(0.08)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // --- Logo Section ---
          Row(
            children: [
              Image.asset(AppIcons.logo, height: 40),
              const SizedBox(width: 12),
              Text(
                "K LIGHTNING",
                style: AppTextStyle.hMedium(
                  context: context,
                  color: Colors.white,
                ).copyWith(fontWeight: FontWeight.w800),
              ),
            ],
          ),

          // --- Menu or Hamburger ---
          if (isMobile)
            IconButton(
              icon: Icon(_isExpanded ? Icons.close : Icons.menu_rounded, color: Colors.white),
              onPressed: () => setState(() => _isExpanded = !_isExpanded),
            )
          else
            Row(
              children: options.asMap().entries.map((entry) {
                final index = entry.key;
                final label = entry.value;
                final bool isSelected = widget.currentPage == index;
                final bool isHovered = _hoveredIndex == index;

                return MouseRegion(
                  cursor: MouseCursor.defer,
                  onEnter: (_) => setState(() => _hoveredIndex = index),
                  onExit: (_) => setState(() => _hoveredIndex = -1),
                  child: GestureDetector(
                    onTap: () => widget.onPageSelected(index),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 250),
                      margin: const EdgeInsets.symmetric(horizontal: 18),
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                      decoration: BoxDecoration(
                        border: widget.currentPage == index
                            ? const Border(
                                bottom: BorderSide(
                                  color: Colors.white, // line color
                                  width: 2, // line thickness
                                ),
                              )
                            : null,
                      ),
                      child: Text(
                        label,
                        style: AppTextStyle.sMedium(
                          context: context,
                          color: widget.currentPage == index ? Colors.white : Colors.white70,
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
        ],
      ),
    );
  }
}
