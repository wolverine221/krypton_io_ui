import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:untitled/core/app_theme/app_colors/appcolors.dart';

class AppConstant {
  static Widget glassMorphicFAB(BuildContext context, VoidCallback onPressed) {
    final appColors = Theme.of(context).extension<AppColors>()!;

    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
          child: GestureDetector(
            onTap: onPressed,
            child: Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                  colors: [Colors.white.withOpacity(0.2), Colors.white.withOpacity(0.05)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                // border: Border.all(color: Colors.white.withOpacity(0.2)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: const Center(child: Icon(Icons.arrow_upward, color: Colors.white)),
            ),
          ),
        ),
      ),
    );
  }
}
