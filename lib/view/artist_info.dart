import 'package:chords_app/global/global.dart';
import 'package:chords_app/res/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArtistInfo extends StatelessWidget {
  const ArtistInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    "assets/images/artist.png",
                    width: screenWidth,
                    height: 260.h,
                    fit: BoxFit.fill,
                  ),
                  Container(
                    width: screenWidth,
                    height: 260.h,
                    alignment: Alignment.bottomLeft,
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          AppColors.black.withOpacity(0),
                          AppColors.black,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: const [0.7, 0.94],
                      ),
                    ),
                    child: Text(
                      "Worship Paradise",
                      style:
                          textStyle(fontSize: 26.sp, weight: FontWeight.w900),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.h, left: 10.w),
                    child: CircleAvatar(
                      child: backIcon(context),
                      backgroundColor: AppColors.bgColor,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  children: [
                    spaceHeight(14.h),
                    Row(
                      children: [
                        Stack(
                          // alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30.r,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30, left: 30),
                              child: CircleAvatar(
                                radius: 20.r,
                                backgroundColor: AppColors.black,
                                child: CircleAvatar(
                                  radius: 16.r,
                                  backgroundColor: AppColors.primaryOrange,
                                  child: const Icon(
                                    Icons.favorite_rounded,
                                    color: AppColors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        spaceWidth(20.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Total Songs",
                              style: textStyle(
                                  fontSize: 14.sp, weight: FontWeight.w400),
                            ),
                            Text(
                              "30 songs",
                              style: textStyle(
                                  fontSize: 12.sp,
                                  weight: FontWeight.w400,
                                  color: AppColors.greyText),
                            ),
                          ],
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            "assets/images/facebook_con.png",
                            height: 30.h,
                            width: 30.w,
                            fit: BoxFit.fill,
                            color: AppColors.white,
                          ),
                        ),
                        spaceWidth(),
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            "assets/images/instagram.png",
                            height: 30.h,
                            width: 30.w,
                            fit: BoxFit.fill,
                            color: AppColors.white,
                          ),
                        ),
                        spaceWidth(),
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            "assets/images/twitter.png",
                            height: 30.h,
                            width: 30.w,
                            fit: BoxFit.fill,
                            color: AppColors.white,
                          ),
                        ),
                      ],
                    ),
                    spaceHeight(10.h),
                    const Divider(
                      color: AppColors.grey,
                    ),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "No Weapon Shall",
                                        overflow: TextOverflow.ellipsis,
                                        style: textStyle(
                                            fontSize: 18.sp,
                                            weight: FontWeight.w400,
                                            color: AppColors.primaryYellow),
                                      ),
                                      Text(
                                        "256 Views | 100 Likes",
                                        overflow: TextOverflow.ellipsis,
                                        style: textStyle(
                                            fontSize: 13.6.sp,
                                            weight: FontWeight.w400,
                                            color: AppColors.greyText),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              spaceWidth(),
                              Text(
                                "Gm",
                                overflow: TextOverflow.ellipsis,
                                style: textStyle(
                                    fontSize: 14.sp,
                                    weight: FontWeight.w400,
                                    color: AppColors.grey),
                              ),
                              spaceWidth(),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.favorite_outline_rounded,
                                    color: Color(0XFFEC2137),
                                  )),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
