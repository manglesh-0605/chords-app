import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../global/global.dart';
import '../res/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            spaceHeight(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              height: 44.h,
              child: TextField(
                // controller: controller,
                style: textStyle(weight: FontWeight.w600),
                cursorColor: AppColors.white,
                keyboardType: TextInputType.text,
                onTapOutside: (event) {
                  // FocusScope.of(context).unfocus();
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0XFF282828),
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.r),
                      borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.r),
                      borderSide: BorderSide.none),
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
                  hintText: "Search for Chords and Artist",
                  hintStyle:
                      textStyle(weight: FontWeight.w400, color: AppColors.grey),
                  suffixIcon: const Icon(
                    Icons.search_rounded,
                    size: 20.0,
                    color: AppColors.grey,
                  ),
                ),
              ),
            ),
            spaceHeight(20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Image.asset("assets/images/slide.png"),
            ),
            spaceHeight(),
            TitleRow(
              title: "Explore New Collections",
              onPress: () {},
            ),
            spaceHeight(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(right: 16.w),
                child: Row(
                  children: List.generate(
                    4,
                    (index) => Container(
                      width: 296.w,
                      padding: EdgeInsets.only(left: 16.w),
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Container(
                            height: 140.h,
                            width: 280.w,
                            decoration: BoxDecoration(
                              color: AppColors.grey.withOpacity(0.4),
                              gradient: LinearGradient(
                                colors: [
                                  AppColors.black.withOpacity(0),
                                  AppColors.black,
                                ],
                                stops: const [0.7, 1],
                              ),
                              borderRadius: BorderRadius.circular(16.r),
                              image: const DecorationImage(
                                  image: AssetImage("assets/images/coll.png"),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.w, vertical: 16.h),
                            child: Column(
                              children: [
                                // Text(
                                //   "New English Songs",
                                //   style: textStyle(
                                //       fontSize: 20.sp, weight: FontWeight.w700),
                                // ),
                                // spaceHeight(10.h),
                                Text(
                                  "New English Songs",
                                  style: textStyle(
                                      fontSize: 20.sp, weight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            spaceHeight(30.h),
            TitleRow(
              title: "Trending Song Chords",
              onPress: () {},
            ),
            spaceHeight(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(right: 16.w),
                child: Row(
                  children: List.generate(
                    7,
                    (index) => Container(
                      width: 102.w,
                      padding: EdgeInsets.only(left: 16.w),
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              Container(
                                height: 86.h,
                                width: 86.w,
                                decoration: BoxDecoration(
                                  color: AppColors.grey.withOpacity(0.4),
                                  borderRadius: BorderRadius.circular(8.6.r),
                                  image: const DecorationImage(
                                      image:
                                          AssetImage("assets/images/img.png"),
                                      fit: BoxFit.fill),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.w, vertical: 10.h),
                                child: CircleAvatar(
                                  radius: 16.r,
                                  backgroundColor:
                                      AppColors.white.withOpacity(0.8),
                                  child: const Icon(
                                    Icons.play_arrow_rounded,
                                    color: AppColors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          spaceHeight(4.h),
                          Text(
                            "Inside Out",
                            overflow: TextOverflow.ellipsis,
                            style: textStyle(
                                fontSize: 12.sp, weight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            spaceHeight(30.h),
            TitleRow(
              title: "Find Top Artists",
              onPress: () {},
            ),
            spaceHeight(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(right: 16.w),
                child: Row(
                  children: List.generate(
                    7,
                    (index) => Container(
                      width: 102.w,
                      padding: EdgeInsets.only(left: 16.w),
                      child: Column(
                        children: [
                          Container(
                            height: 86.h,
                            width: 86.w,
                            decoration: BoxDecoration(
                              color: AppColors.grey.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(8.6.r),
                              image: const DecorationImage(
                                  image: AssetImage("assets/images/img.png"),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          spaceHeight(4.h),
                          Text(
                            "Worship Paradise",
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: textStyle(
                                fontSize: 12.sp, weight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            spaceHeight(30.h),
            TitleRow(
              title: "Discover New",
              onPress: () {},
            ),
            spaceHeight(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(right: 16.w),
                child: Row(
                  children: List.generate(
                    7,
                    (index) => Container(
                      width: 114.w,
                      padding: EdgeInsets.only(left: 16.w),
                      child: Column(
                        children: [
                          Container(
                            height: 100.h,
                            width: 100.w,
                            decoration: BoxDecoration(
                              color: AppColors.grey.withOpacity(0.4),
                              image: const DecorationImage(
                                  image: AssetImage("assets/images/img1.png"),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          spaceHeight(4.h),
                          Text(
                            "Never too late",
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: textStyle(
                                fontSize: 12.sp, weight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            spaceHeight()
          ],
        ),
      ),
    );
  }
}

class TitleRow extends StatelessWidget {
  final String title;
  final Function() onPress;
  const TitleRow({required this.title, required this.onPress, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(4.r)),
            width: 4.w,
            height: 20.h,
          ),
          spaceWidth(),
          Expanded(
            child: Text(
              title,
              overflow: TextOverflow.ellipsis,
              style: textStyle(fontSize: 18.sp, weight: FontWeight.w500),
            ),
          ),
          spaceWidth(6.w),
          GestureDetector(
            onTap: onPress,
            child: Text(
              "See more",
              overflow: TextOverflow.ellipsis,
              style: textStyle(fontSize: 12.sp, weight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
