import 'package:flutter/material.dart';
import 'package:untitled/core/app_constant/AppConstant.dart';
import 'package:untitled/core/app_theme/app_colors/appcolors.dart';
import 'package:untitled/presentation/screens/PageOne/PageOne.dart';
import 'package:untitled/presentation/screens/PageTwo/PageTwo.dart';
import 'package:untitled/presentation/screens/PageThree/PageThree.dart';
import 'package:untitled/presentation/screens/PageFour/PageFour.dart';
import 'package:untitled/presentation/screens/PageFive/PageFive.dart';
import 'package:untitled/presentation/screens/PageSix/PageSix.dart';
import 'package:untitled/presentation/screens/PageSeven/PageSeven.dart';
import 'package:untitled/presentation/widgets/GradientSweepBackground/GradientSweepBackground.dart';
import 'package:untitled/presentation/widgets/custom_header/custom_header.dart';
import 'package:untitled/presentation/widgets/wave_widget/WaveBackground.dart';

class WebHomePage extends StatefulWidget {
  const WebHomePage({super.key});

  @override
  State<WebHomePage> createState() => _WebHomePageState();
}

class _WebHomePageState extends State<WebHomePage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<String> _pages = ["Home", "Products", "Services", "About Us", "Blog", "FAQ", "Support"];

  void _jumpToPage(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
    setState(() => _currentPage = index);
  }

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<AppColors>()!;

    return Scaffold(
      resizeToAvoidBottomInset: false,

      extendBodyBehindAppBar: true,
      extendBody: true,
      body: Stack(
        children: [
          GradientSweepBackground(controller: _pageController),

          Column(
            children: [
              if (_currentPage == 0)
                CustomHeaderWidget(currentPage: _currentPage, onPageSelected: _jumpToPage),
              Expanded(
                child: PageView(
                  controller: _pageController,
                  scrollDirection: Axis.vertical,
                  onPageChanged: (index) => setState(() => _currentPage = index),
                  children: const [
                    PageOne(),
                    PageTwo(),
                    PageThree(),
                    PageFour(),
                    PageFive(),
                    PageSix(),
                    PageSeven(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),

      floatingActionButton: _currentPage != 0
          ? AppConstant.glassMorphicFAB(context, () {
              _jumpToPage(0);
            })
          : null,
    );
  }
}
