import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../global/global.dart';
import '../../../res/colors.dart';

class LikesSongs extends StatelessWidget {
  const LikesSongs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child:
              // Center(
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              // Text(
              //   "No Songs Liked",
              //   style: textStyle(fontSize: 26.sp, weight: FontWeight.w500),
              // ),
              //       spaceHeight(10.h),
              //       Text(
              //         "Liked songs are added here for easy access",
              //         style: textStyle(
              //             fontSize: 18.sp,
              //             weight: FontWeight.w500,
              //             color: AppColors.grey),
              //       ),
              //     ],
              //   ),
              // ),
              ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  spaceHeight(10.h),
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {},
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "The Lion and the Lamb",
                                overflow: TextOverflow.ellipsis,
                                style: textStyle(
                                    fontSize: 18.sp,
                                    weight: FontWeight.w400,
                                    color: AppColors.primaryYellow),
                              ),
                              Text(
                                "Worship Paradise",
                                overflow: TextOverflow.ellipsis,
                                style: textStyle(
                                    fontSize: 13.6.sp, weight: FontWeight.w400),
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
                            Icons.favorite_rounded,
                            color: Color(0XFFEC2137),
                          )),
                    ],
                  ),
                  spaceHeight(10.h)
                ],
              );
            },
          )),
    );
  }
}
