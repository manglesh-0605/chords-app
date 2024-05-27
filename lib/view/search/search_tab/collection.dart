import 'package:chords_app/global/global.dart';
import 'package:chords_app/res/colors.dart';
import 'package:chords_app/view/search/collection_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CollectionTab extends StatelessWidget {
  const CollectionTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
              child: GestureDetector(
                onTap: () {
                  switchScreenPush(context, const CollectionView());
                },
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: 124.h,
                      width: double.maxFinite,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.r),
                        image: const DecorationImage(
                            image: AssetImage("assets/images/collection.png"),
                            fit: BoxFit.fill),
                      ),
                      child: Text(
                        "VENUS",
                        style:
                            textStyle(fontSize: 30.sp, weight: FontWeight.w900),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 24.h,
                          alignment: Alignment.center,
                          color: AppColors.grey,
                          margin: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 10.h),
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: Text(
                            "15 Songs",
                            style: textStyle(
                                fontSize: 12.sp, weight: FontWeight.w400),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "1255",
                          style: textStyle(
                              fontSize: 14.sp, weight: FontWeight.w400),
                        ),
                        spaceWidth(10.w),
                        Icon(
                          Icons.thumb_up_outlined,
                          color: AppColors.white,
                          size: 26.r,
                        )
                      ],
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
