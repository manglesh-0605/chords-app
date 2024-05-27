import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../global/global.dart';
import '../../../res/colors.dart';

class ArtistTab extends StatelessWidget {
  const ArtistTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {},
              child: Padding(
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
                    spaceWidth(),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: AppColors.white,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
