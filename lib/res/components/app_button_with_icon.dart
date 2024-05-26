import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../global/global.dart';
import '../colors.dart';

class AppButtonWithIcon extends StatelessWidget {
  final VoidCallback onPress;
  final String btnText;
  final double? width;
  final String icon;
  final bool isBorder;
  const AppButtonWithIcon(
      {required this.btnText,
      required this.onPress,
      this.width,
      this.isBorder = false,
      required this.icon,
      super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 48.h,
        width: width,
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        decoration: BoxDecoration(
          color: isBorder ? null : AppColors.primaryYellow,
          borderRadius: BorderRadius.circular(4.r),
          border: isBorder ? Border.all(color: AppColors.grey) : null,
          boxShadow: [
            BoxShadow(
              color: AppColors.bgColor.withOpacity(0.1),
              blurRadius: 12.0,
              offset: const Offset(0, 6),
            )
          ],
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              height: 24.h,
              width: 26.w,
              fit: BoxFit.fill,
            ),
            Expanded(
              child: Text(
                btnText,
                textAlign: TextAlign.center,
                style: textStyle(
                    weight: FontWeight.w700,
                    color: !isBorder ? AppColors.bgColor : null),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
