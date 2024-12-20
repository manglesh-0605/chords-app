import 'package:chords_app/global/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../res/colors.dart';
import '../../../res/components/app_textfiels.dart';

class SetPassword extends StatelessWidget {
  const SetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController oldPassword = TextEditingController();
    TextEditingController newPassword = TextEditingController();
    TextEditingController confPassword = TextEditingController();
    ValueNotifier obscureOldPassword = ValueNotifier<bool>(true);
    ValueNotifier obscureNewPassword = ValueNotifier<bool>(true);

    return Scaffold(
      appBar: AppBar(
        leading: backIcon(context),
        title: const Text("Set new password"),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  spaceHeight(20.h),
                  Text(
                    "Old Password",
                    style: textStyle(weight: FontWeight.w400),
                  ),
                  spaceHeight(),
                  ValueListenableBuilder(
                    builder: (BuildContext context, value, Widget? child) {
                      return AppTextField(
                        controller: oldPassword,
                        keyType: TextInputType.text,
                        obscureText: obscureOldPassword.value,
                        hint: "Old Password",
                        suffixIcon: IconButton(
                          splashColor: Colors.transparent,
                          icon: Icon(
                            obscureOldPassword.value
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                            color: AppColors.grey,
                            size: 24.r,
                          ),
                          onPressed: () {
                            obscureOldPassword.value =
                                !obscureOldPassword.value;
                          },
                        ),
                      );
                    },
                    valueListenable: obscureOldPassword,
                  ),
                  spaceHeight(20.h),
                  Text(
                    "Set New Password",
                    style: textStyle(weight: FontWeight.w400),
                  ),
                  spaceHeight(),
                  ValueListenableBuilder(
                    builder: (BuildContext context, value, Widget? child) {
                      return AppTextField(
                        controller: newPassword,
                        keyType: TextInputType.text,
                        obscureText: obscureNewPassword.value,
                        hint: "New Password",
                        suffixIcon: IconButton(
                          splashColor: Colors.transparent,
                          icon: Icon(
                            obscureNewPassword.value
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                            color: AppColors.grey,
                            size: 24.r,
                          ),
                          onPressed: () {
                            obscureNewPassword.value =
                                !obscureNewPassword.value;
                          },
                        ),
                      );
                    },
                    valueListenable: obscureNewPassword,
                  ),
                  spaceHeight(),
                  ValueListenableBuilder(
                    builder: (BuildContext context, value, Widget? child) {
                      return AppTextField(
                        controller: confPassword,
                        keyType: TextInputType.text,
                        obscureText: obscureNewPassword.value,
                        hint: "Re-Password",
                        suffixIcon: IconButton(
                          splashColor: Colors.transparent,
                          icon: Icon(
                            obscureNewPassword.value
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                            color: AppColors.grey,
                            size: 24.r,
                          ),
                          onPressed: () {
                            obscureNewPassword.value =
                                !obscureNewPassword.value;
                          },
                        ),
                      );
                    },
                    valueListenable: obscureNewPassword,
                  ),
                  spaceHeight(60.h),
                ],
              ),
            ),
          ),
          // Positioned Update Password Button
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
                  "Update Password",
                  style: textStyle(weight: FontWeight.w400),
                ),
              ),
            ),
          ),
          // Positioned App Banner
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
