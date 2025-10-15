import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/core/app_theme/app_colors/appcolors.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final String? hintText;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final bool obscureText;
  final int maxLines;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final List<TextInputFormatter>? inputFormatters;

  const CustomTextFormField({
    Key? key,
    required this.labelText,
    this.hintText,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.obscureText = false,
    this.maxLines = 1,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    this.onChanged,
    this.inputFormatters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<AppColors>();
    final borderColor = appColors?.lineGray ?? Colors.white60;
    final labelColor = appColors?.dimBlack ?? Colors.white60;
    final textColor = appColors?.textPrimary ?? Colors.white;
    final fillColor = appColors?.bgGray ?? Colors.white12;

    return Expanded(
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        obscureText: obscureText,
        maxLines: maxLines,
        validator: validator,
        onChanged: onChanged,
        inputFormatters: inputFormatters,
        style: TextStyle(color: textColor, fontWeight: FontWeight.w500),
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(color: labelColor),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.white60),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          filled: true,
          fillColor: fillColor,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: borderColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: appColors?.appPrimary ?? Colors.white60, width: 2),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: appColors?.errorRed ?? Colors.red),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: appColors?.errorRed ?? Colors.red),
          ),
        ),
      ),
    );
  }
}
