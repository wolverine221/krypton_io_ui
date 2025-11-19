import 'dart:math';
import 'package:flutter/material.dart';
import 'package:untitled/core/app_icons/app_icons.dart';

class ParallaxHeadphone extends StatefulWidget {
  const ParallaxHeadphone({super.key});

  @override
  State<ParallaxHeadphone> createState() => _ParallaxHeadphoneState();
}

class _ParallaxHeadphoneState extends State<ParallaxHeadphone> {
  double rotateX = 0;
  double rotateY = 0;
  double scale = 1.0;

  void _onHover(PointerEvent e, Size size) {
    final dx = (e.localPosition.dx - size.width / 2) / (size.width / 2);
    final dy = (e.localPosition.dy - size.height / 2) / (size.height / 2);

    setState(() {
      rotateY = dx * 0.35; // left-right
      rotateX = dy * -0.35; // up-down
      scale = 1.05;
    });
  }

  void _onExit(PointerEvent e) {
    setState(() {
      rotateX = 0;
      rotateY = 0;
      scale = 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onExit: _onExit,
      onHover: (event) {
        final size = context.size ?? const Size(300, 300);
        _onHover(event, size);
      },
      child: TweenAnimationBuilder(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
        tween: Tween(begin: 0.0, end: scale),
        builder: (context, value, child) {
          return Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001) // 3D depth
              ..rotateX(rotateX)
              ..rotateY(rotateY)
              ..scale(scale),
            child: Stack(
              alignment: Alignment.center,
              children: [
                // BACK GLOW CIRCLE
                Transform.translate(
                  offset: Offset(rotateY * 30, rotateX * 30),
                  child: Container(
                    width: 380,
                    height: 380,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: RadialGradient(
                        colors: [
                          Colors.white.withOpacity(0.15),
                          Colors.black.withOpacity(0.0),
                        ],
                        radius: 0.9,
                      ),
                    ),
                  ),
                ),

                // PRODUCT IMAGE
                Image.asset(
                  AppIcons.headphonenobg,
                  height: 330,
                  fit: BoxFit.contain,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
