import 'package:flutter/material.dart';

class ResponsiveControl extends StatelessWidget {
  final Widget mobile;
  final Widget web;

  const ResponsiveControl({super.key, required this.mobile, required this.web});

  static bool isMobile(BuildContext context) => MediaQuery.of(context).size.width < 800;

  static bool isWeb(BuildContext context) => MediaQuery.of(context).size.width >= 800;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 800) {
          return web;
        } else {
          return mobile;
        }
      },
    );
  }
}
