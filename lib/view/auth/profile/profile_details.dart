import 'package:chords_app/global/global.dart';
import 'package:chords_app/view/auth/profile/set_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../res/colors.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: backIcon(context),
        title: const Text("Account Information"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              spaceHeight(20.h),
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
                          "Set Password",
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
    );
  }
}
