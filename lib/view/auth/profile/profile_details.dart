import 'package:chords_app/global/global.dart';
import 'package:chords_app/view/auth/profile/set_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../res/colors.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    List tabData = [
      {"icon": Icons.person_rounded, "title": "Username", "onClick": ""},
      {"icon": Icons.notifications_rounded, "title": "Email", "onClick": ""},
      {"icon": Icons.policy_rounded, "title": "Phone", "onClick": ""},
    ];

    return Scaffold(
      appBar: AppBar(
        leading: backIcon(context),
        title: const Text("Account Information"),
      ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  spaceHeight(40.h),
                  Column(
                    children: List.generate(
                      tabData.length,
                      (index) => GestureDetector(
                        onTap: () {
                          if (index == 100) {
                            switchScreenPush(
                                context, tabData[index]['onClick']);
                          }
                        },
                        child: Container(
                          height: 60.h,
                          color: AppColors.transparent,
                          margin: EdgeInsets.only(bottom: 10.h),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  spaceWidth(),
                                  Text(
                                    tabData[index]['title'],
                                    style: textStyle(
                                      fontSize: 20.sp,
                                      weight: FontWeight.w700,
                                    ),
                                  ),
                                  spaceWidth(5.w),
                                  const Icon(
                                    Icons.edit,
                                    color: Colors.white30,
                                    size: 18,
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(18.w, 0, 0, 0),
                                  child: Text(
                                    tabData[index]["title"],
                                    style: textStyle(
                                      fontSize: 14.sp,
                                      color: Colors.white38,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 16.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Google Button
                        Expanded(
                          child: Container(
                            height: 50.h,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey, // Thin gray border
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            child: TextButton(
                              onPressed: () {
                                // Add your Google linking logic here
                              },
                              style: TextButton.styleFrom(
                                foregroundColor:
                                    Colors.black, // Text and icon color
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/google.png', // Replace with your Google icon asset path
                                    width: 25.w,
                                    height: 25.h,
                                  ),
                                  SizedBox(width: 8.w),
                                  Text(
                                    "Link Google",
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 16.w), // Space between buttons

                        // Facebook Button
                        Expanded(
                          child: Container(
                            height: 50.h,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey, // Thin gray border
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            child: TextButton(
                              onPressed: () {
                                // Add your Facebook linking logic here
                              },
                              style: TextButton.styleFrom(
                                foregroundColor:
                                    Colors.black, // Text and icon color
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/facebook.png', // Replace with your Facebook icon asset path
                                     width: 25.w,
                                    height: 25.h,
                                  ),
                                  SizedBox(width: 8.w),
                                  Text(
                                    "Link Facebook",
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      switchScreenPush(context, const SetPassword());
                    },
                    child: Container(
                      height: 54.h,
                      color: AppColors.blackGrey,
                      margin: EdgeInsets.only(bottom: 10.h),
                      child: Row(
                        children: [
                          spaceWidth(),
                          const Icon(
                            Icons.lock_rounded,
                            color: AppColors.white,
                          ),
                          spaceWidth(),
                          Expanded(
                            child: Text(
                              "Set New Password",
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
                ],
              ),
            ),
          ),

          // "Update Profile" button
          Positioned(
            bottom: 100.h, // 100px space from the bottom
            left: 16.w, // Side padding
            right: 16.w, // Side padding
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Add your button action here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.blackGrey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero
                  )
                ),
                child: Text(
                  "Update Profile",
                  style: textStyle(weight: FontWeight.w400),
                ),
              ),
            ),
          ),

          // App Banner
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 44.h,
              width: double.infinity,
              color: Colors.blue, // Replace with your desired banner color
              child: Center(
                child: Text(
                  'App Banner',
                  style: textStyle(
                    fontSize: 18.sp,
                    weight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
