import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:untitled/core/app_theme/app_colors/appcolors.dart';

class GradientSweepBackground extends StatelessWidget {
  final PageController controller;

  const GradientSweepBackground({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<AppColors>()!;

    return AnimatedBuilder(
      animation: controller,
      builder: (context, _) {
        final double page = controller.hasClients ? controller.page ?? 0 : 0;
        final double angle = (page * 0.6);
        final dx = math.cos(angle) * 1.2;
        final dy = math.sin(angle) * 1.2;

        return CustomPaint(
          size: MediaQuery.of(context).size,
          painter: _GlowBackgroundPainter(
            glowOffset: Offset(dx, dy),
            glowColor: const Color(0xFF7B61FF), // Use original violet glow color
            glowOpacity: 0.3, // lighter glow opacity
            baseTopColor: const Color(0xFF0C0B1A), // Darker base top color (like first snippet)
            baseBottomColor: const Color(0xFF141321), // Darker base bottom color
          ),
        );
      },
    );
  }
}

class _GlowBackgroundPainter extends CustomPainter {
  final Offset glowOffset;
  final Color glowColor;
  final double glowOpacity;
  final Color baseTopColor;
  final Color baseBottomColor;

  _GlowBackgroundPainter({
    required this.glowOffset,
    required this.glowColor,
    required this.glowOpacity,
    required this.baseTopColor,
    required this.baseBottomColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint backgroundPaint = Paint()
      ..shader = LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [baseTopColor, baseBottomColor],
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), backgroundPaint);

    final Paint glowPaint = Paint()
      ..shader =
          RadialGradient(
            center: Alignment(glowOffset.dx, glowOffset.dy),
            radius: 1.0,
            colors: [glowColor.withOpacity(glowOpacity), glowColor.withOpacity(0.0)],
            stops: const [0.0, 1.0],
          ).createShader(
            Rect.fromCircle(
              center: Offset(size.width / 2, size.height / 2),
              radius: size.shortestSide * 0.8,
            ),
          );

    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), glowPaint);
  }

  @override
  bool shouldRepaint(covariant _GlowBackgroundPainter oldDelegate) {
    return oldDelegate.glowOffset != glowOffset ||
        oldDelegate.glowColor != glowColor ||
        oldDelegate.glowOpacity != glowOpacity ||
        oldDelegate.baseTopColor != baseTopColor ||
        oldDelegate.baseBottomColor != baseBottomColor;
  }
}
