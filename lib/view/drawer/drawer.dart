import 'package:chords_app/res/colors.dart';
import 'package:chords_app/view/drawer/drawer_iem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../global/global.dart';

class AppDrawerMenu extends StatelessWidget {
  const AppDrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    //     statusBarColor: AppColor.transparent,
    //     statusBarBrightness: Brightness.dark,
    //     statusBarIconBrightness: Brightness.dark,
    //     systemNavigationBarColor: AppColor.transparent));

    return
        //  Stack(
        //   children: [
        //     Container(
        //       height: screenHeight,
        //       width: screenWidth,
        //       color: AppColor.black.withOpacity(0.4),
        //     ),
        //     Container(
        //       height: screenHeight,
        //       width: screenWidth * 0.7,
        //       color: AppColor.white,
        //     ),
        //   ],
        // ),

        Stack(
      children: [
        Container(
          width: screenWidth * 0.7,
          height: screenHeight,
          decoration: const BoxDecoration(color: AppColors.bgColor),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/images/logo.png",
                          width: 199.w,
                        ),
                        spaceWidth(10.w),
                        GestureDetector(
                          onTap: () {
                            Scaffold.of(context).closeDrawer();
                          },
                          child: const Icon(
                            Icons.clear_rounded,
                            color: AppColors.white,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                        color: AppColors.white.withOpacity(0.2), height: 10),
                    spaceHeight(),
                    const DrawerItem(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
