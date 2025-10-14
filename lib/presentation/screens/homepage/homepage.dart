import 'package:flutter/material.dart';
import 'package:untitled/core/app_textstyle/appTextStyle.dart';
import 'package:untitled/presentation/screens/Responsive_controller/responsive_controller.dart';
import 'package:untitled/presentation/screens/homepage/MobileHomePage/MobileHomePage.dart';
import 'package:untitled/presentation/screens/homepage/WebHomePage/WebHomePage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveControl(mobile: MobileHomePage(), web: WebHomePage()),
    );
  }
}
