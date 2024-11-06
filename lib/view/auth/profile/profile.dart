import 'package:chords_app/global/global.dart';
import 'package:chords_app/res/colors.dart';
import 'package:chords_app/view/auth/profile/notifications.dart';
import 'package:chords_app/view/auth/profile/privacy_policy.dart';
import 'package:chords_app/view/auth/profile/profile_details.dart';
import 'package:chords_app/view/contact_us.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'support.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List tabData = [
      {
        "icon": Icons.person_rounded,
        "title": "Personal Details",
        "onClick": const ProfileDetails()
      },
      {
        "icon": Icons.notifications_rounded,
        "title": "Notification",
        "onClick": const NotificationScreen()
      },
      {
        "icon": Icons.policy_rounded,
        "title": "Privacy Policy",
        "onClick": const PrivacyPolicy()
      },
      {
        "icon": Icons.support_rounded,
        "title": "Customer Support",
        "onClick": const SupportScreen()
      },
      {
        "icon": Icons.star_border_rounded,
        "title": "Rate the App",
        "onClick": ""
      },
    ];
    return Scaffold(
      appBar: AppBar(
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
              Column(
                children: List.generate(
                  tabData.length,
                  (index) => GestureDetector(
                    onTap: () {
                      if (index != 4) {
                        switchScreenPush(context, tabData[index]['onClick']);
                      }
                    },
                    child: Container(
                      height: 54.h,
                      color: AppColors.blackGrey,
                      margin: EdgeInsets.only(bottom: 10.h),
                      child: Row(
                        children: [
                          spaceWidth(),
                          Icon(
                            tabData[index]['icon'],
                            color: AppColors.white,
                          ),
                          spaceWidth(),
                          Expanded(
                            child: Text(
                              tabData[index]['title'],
                              style: textStyle(
                                  fontSize: 18.sp, weight: FontWeight.w700),
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: AppColors.white,
                          ),
                          spaceWidth(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              spaceHeight(10.h),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 84.h,
                      color: AppColors.blackGrey,
                      alignment: Alignment.center,
                      child: Text(
                        "Remove Ads",
                        style: textStyle(weight: FontWeight.w400),
                      ),
                    ),
                  ),
                  spaceWidth(10.w),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        switchScreenPush(context, const SupportScreen());
                      },
                      child: Container(
                        height: 84.h,
                        color: AppColors.blackGrey,
                        alignment: Alignment.center,
                        child: Text(
                          "Support us",
                          style: textStyle(weight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              spaceHeight(10.h),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        switchScreenPush(context, const ContactUsScreen());
                      },
                      child: Container(
                        height: 84.h,
                        color: AppColors.blackGrey,
                        alignment: Alignment.center,
                        child: Text(
                          "Contact Support",
                          style: textStyle(weight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ),
                  spaceWidth(10.w),
                  Expanded(
                    child: Container(
                      height: 84.h,
                      color: AppColors.blackGrey,
                      alignment: Alignment.center,
                      child: Text(
                        "Contribute",
                        style: textStyle(weight: FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              ),
              spaceHeight(20.h),
              Container(
                height: 40.h,
                color: AppColors.blackGrey,
                alignment: Alignment.center,
                child: Text(
                  "Logout",
                  style: textStyle(weight: FontWeight.w400),
                ),
              ),
              spaceHeight(),
            ],
          ),
        ),
      ),
    );
  }
}
