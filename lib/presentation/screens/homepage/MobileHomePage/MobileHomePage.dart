import 'package:flutter/material.dart';
import 'package:untitled/core/app_textstyle/appTextStyle.dart';

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Akco Speaker Store", style: AppTextStyle.headline1(context: context)),
          const SizedBox(height: 16),
          Container(
            height: 200,
            color: Colors.deepPurple.shade100,
            child: const Center(child: Text("Featured Product Mob")),
          ),
          const SizedBox(height: 16),
          // Add more sections here
        ],
      ),
    );
  }
}
