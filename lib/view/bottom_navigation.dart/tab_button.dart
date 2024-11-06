import 'package:chords_app/global/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../res/colors.dart';

class TabButton extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  final bool isSelected;
  final String text;
  const TabButton(
      {super.key,
      required this.icon,
      required this.onTap,
      required this.text,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: AppColors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon,
                color: isSelected ? AppColors.primaryYellow : AppColors.white,
                size: 30.r),
            spaceHeight(4.h),
            Text(
              text,
              style: textStyle(
                  fontSize: 12.sp,
                  color: isSelected ? AppColors.primaryYellow : null,
                  weight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }
}
