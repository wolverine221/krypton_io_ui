import 'dart:math';
import 'package:flutter/material.dart';

class WaveBackground extends StatelessWidget {
  final PageController controller;

  const WaveBackground({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        double page = controller.hasClients ? controller.page ?? 0 : 0;
        double offset = (page % 1);

        return CustomPaint(
          painter: _WavePainter(offset: offset),
          child: Container(),
        );
      },
    );
  }
}

class _WavePainter extends CustomPainter {
  final double offset;

  _WavePainter({required this.offset});

  @override
  void paint(Canvas canvas, Size size) {
    final gradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color.lerp(const Color(0xFF6C63FF), const Color(0xFF1E1E2F), offset)!,
        Color.lerp(const Color(0xFF4E54C8), const Color(0xFF0F0F1C), offset)!,
      ],
    );

    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    final paint = Paint()..shader = gradient!.createShader(rect);
    canvas.drawRect(rect, paint);

    // Draw wave
    final path = Path();
    final waveHeight = 40;
    final waveLength = size.width;

    path.moveTo(0, size.height);

    for (double x = 0; x <= waveLength; x++) {
      double y = sin((x / waveLength * 2 * pi) + (offset * 2 * pi)) * waveHeight;
      path.lineTo(x, size.height - 200 + y);
    }

    path.lineTo(size.width, size.height);
    path.close();

    final wavePaint = Paint()..color = Colors.white.withOpacity(0.08);
    canvas.drawPath(path, wavePaint);
  }

  @override
  bool shouldRepaint(covariant _WavePainter oldDelegate) {
    return oldDelegate.offset != offset;
  }
}
