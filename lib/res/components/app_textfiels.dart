import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../global/global.dart';
import '../colors.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final TextInputType? keyType;
  final bool? enabled;
  final bool? obscureText;
  final int? maxLength;
  final int? maxLines;
  final IconData? icon;
  final Widget? suffixIcon;
  const AppTextField(
      {required this.controller,
      required this.hint,
      this.keyType,
      this.enabled,
      this.obscureText = false,
      this.maxLength,
      this.maxLines = 1,
      this.suffixIcon,
      this.icon,
      super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: textStyle(weight: FontWeight.w600),
      cursorColor: AppColors.white,
      keyboardType: keyType,
      enabled: enabled,
      obscureText: obscureText!,
      obscuringCharacter: "*",
      maxLength: maxLength,
      maxLines: maxLines,
      onTapOutside: (event) {
        // FocusScope.of(context).unfocus();
      },
      decoration: InputDecoration(
        counterText: "",
        // isDense: true,
        border: InputBorder.none,
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
        suffixIcon: suffixIcon,
        hintText: hint,
        hintStyle: textStyle(weight: FontWeight.w400, color: AppColors.grey),
        prefixIcon: icon != null
            ? Icon(
                icon,
                color: AppColors.white,
              )
            : null,
      ),
    );
  }
}
