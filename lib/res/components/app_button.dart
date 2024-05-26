import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../global/global.dart';
import '../colors.dart';

class AppButton extends StatelessWidget {
  final VoidCallback onPress;
  final String btnText;
  final double? width;
  const AppButton(
      {required this.btnText, required this.onPress, this.width, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 48.h,
        width: width,
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        decoration: BoxDecoration(
          color: AppColors.primaryYellow,
          borderRadius: BorderRadius.circular(4.r),
          boxShadow: [
            BoxShadow(
              color: AppColors.bgColor.withOpacity(0.1),
              blurRadius: 12.0,
              offset: const Offset(0, 6),
            )
          ],
        ),
        alignment: Alignment.center,
        child: Text(
          btnText,
          style: textStyle(weight: FontWeight.w500, color: AppColors.bgColor),
        ),
      ),
    );
  }
}
