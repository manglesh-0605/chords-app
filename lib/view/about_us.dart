import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../global/global.dart';
import '../res/colors.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: backIcon(context),
        title: const Text("About Us"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              spaceHeight(),
              Text(
                "Worship Paradise Christian Chords & Lyrics",
                textAlign: TextAlign.center,
                style: textStyle(fontSize: 26.sp, weight: FontWeight.w900),
              ),
              spaceHeight(),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                textAlign: TextAlign.center,
                style: textStyle(fontSize: 18.sp, weight: FontWeight.w400),
              ),
              spaceHeight(24.h),
              Text(
                "Contributors",
                textAlign: TextAlign.center,
                style: textStyle(fontSize: 24.sp, weight: FontWeight.w400),
              ),
              spaceHeight(24.h),
              ListView.builder(
                itemCount: 3,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    height: 66.h,
                    decoration: BoxDecoration(
                        color: const Color(0XFF272727),
                        borderRadius: BorderRadius.circular(4.r)),
                    margin: EdgeInsets.only(bottom: 10.h),
                    padding:
                        EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5.r),
                          child: Image.asset(
                            "assets/images/onBoarding2.png",
                            height: 50.h,
                            width: 50.w,
                            fit: BoxFit.fill,
                          ),
                        ),
                        spaceWidth(),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {},
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Silvan Dsouza",
                                  overflow: TextOverflow.ellipsis,
                                  style: textStyle(
                                      fontSize: 18.sp,
                                      weight: FontWeight.w400,
                                      color: AppColors.primaryYellow),
                                ),
                                Text(
                                  "Marketing",
                                  overflow: TextOverflow.ellipsis,
                                  style: textStyle(
                                      fontSize: 13.6.sp,
                                      weight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                        spaceWidth(),
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            "assets/images/insta.png",
                            width: 22.w,
                            height: 22.h,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
