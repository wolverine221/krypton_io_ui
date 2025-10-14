import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final double? width;
  final double? height;
  final AlignmentGeometry? alignment;

  const CustomContainer({
    Key? key,
    required this.child,
    this.padding,
    this.width,
    this.height,
    this.alignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      width: width ?? double.infinity,
      height: height,
      child: child,
    );
  }
}
