import 'package:chords_app/global/global.dart';
import 'package:chords_app/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: backIcon(context),
        centerTitle: true,
        title: const Text("My Profile"),
        actions: [
          Container(
            height: 30.h,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            decoration: BoxDecoration(
              color: AppColors.grey,
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.edit_rounded,
                  size: 18,
                ),
                spaceWidth(6.w),
                Text(
                  "Edit",
                  style: textStyle(fontSize: 14.sp, weight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              spaceHeight(20.h),
              Row(
                children: [
                  CircleAvatar(
                    radius: 48.r,
                  ),
                  spaceWidth(),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sylvester Dsouza",
                          overflow: TextOverflow.ellipsis,
                          style: textStyle(
                              fontSize: 26.sp,
                              weight: FontWeight.w900,
                              color: AppColors.primaryYellow),
                        ),
                        spaceHeight(6.h),
                        Text(
                          "@sylvesterdsouza",
                          overflow: TextOverflow.ellipsis,
                          style: textStyle(
                              fontSize: 14.sp, weight: FontWeight.w400),
                        ),
                        Text(
                          "Joined - 12 June 2022",
                          overflow: TextOverflow.ellipsis,
                          style: textStyle(
                              fontSize: 14.sp, weight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              spaceHeight(20.h),
            ],
          ),
        ),
      ),
    );
  }
}
