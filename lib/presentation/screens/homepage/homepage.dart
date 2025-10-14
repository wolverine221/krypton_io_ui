import 'package:flutter/material.dart';
import 'package:untitled/core/app_textstyle/appTextStyle.dart';
import 'package:untitled/presentation/screens/Responsive_controller/responsive_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveControl(mobile: MobileHomePage(), web: WebHomePage()),
    );
  }
}

// Mobile layout
class MobileHomePage extends StatelessWidget {
  const MobileHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Akco Speaker Store", style: AppTextStyle.headline1(context)),
          const SizedBox(height: 16),
          Container(
            height: 200,
            color: Colors.deepPurple.shade100,
            child: const Center(child: Text("Featured Product")),
          ),
          const SizedBox(height: 16),
          // Add more sections here
        ],
      ),
    );
  }
}

// Web layout with expandables
class WebHomePage extends StatelessWidget {
  const WebHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.deepPurple.shade50,
            child: const Center(child: Text("Sidebar / Menu")),
          ),
        ),
        Expanded(
          flex: 5,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Akco Speaker Store", style: AppTextStyle.headline1(context)),
                const SizedBox(height: 24),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                  height: 300,
                  color: Colors.deepPurple.shade100,
                  child: const Center(child: Text("Featured Product")),
                ),
                const SizedBox(height: 24),
                // Add more expandable sections
              ],
            ),
          ),
        ),
      ],
    );
  }
}
