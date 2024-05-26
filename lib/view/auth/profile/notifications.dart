import 'package:chords_app/global/global.dart';
import 'package:chords_app/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: backIcon(context),
        title: const Text("Notification"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 40.r,
                    ),
                    spaceWidth(),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
                            style: textStyle(
                              fontSize: 14.sp,
                              weight: FontWeight.w500,
                            ),
                          ),
                          spaceHeight(4.h),
                          Text(
                            "1m ago.",
                            style: textStyle(
                                fontSize: 12.sp,
                                weight: FontWeight.w400,
                                color: AppColors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                spaceHeight(10.h),
                const Divider(
                  color: AppColors.grey,
                ),
                spaceHeight(10.h),
              ],
            );
          },
        ),
      ),
    );
  }
}
