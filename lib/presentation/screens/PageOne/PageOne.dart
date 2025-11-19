import 'dart:math';
import 'package:flutter/material.dart';
import 'package:untitled/core/app_textstyle/appTextStyle.dart';
import 'package:untitled/presentation/widgets/parallax_headphone/parallaxheadphone.dart';

class PageOne extends StatelessWidget {
  final double pageOffset;
  const PageOne({super.key, required this.pageOffset});

  @override
  Widget build(BuildContext context) {
    final offset = pageOffset.clamp(-1.0, 1.0);
    final double fade = (1 - offset.abs()).clamp(0, 1);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 3D Headphone
          Transform.translate(
            offset: Offset(offset * 60, 0),
            child: const SizedBox(
              height: 420,
              child: Center(child: ParallaxHeadphone()),
            ),
          ),

          // const SizedBox(height: 20),

          Opacity(
            opacity: fade,
            child: Text(
              "Surface\nHeadphones",
              textAlign: TextAlign.center,
              style: AppTextStyle.subtitle1(context: context)
            ),
          ),

          const SizedBox(height: 14),

          Opacity(
            opacity: fade,
            child: Text(
              "Price : \$285",
    style: AppTextStyle.subtitle1(context: context)
            ),
    ),


          Opacity(
            opacity: fade,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding:
                const EdgeInsets.symmetric(horizontal: 34, vertical: 18),
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {},
              child: const Text("Add to Cart"),
            ),
          ),
        ],
      ),
    );
  }
}
