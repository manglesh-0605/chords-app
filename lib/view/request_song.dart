import 'package:chords_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../global/global.dart';
import '../res/colors.dart';

class RequestSong extends StatelessWidget {
  const RequestSong({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: backIcon(context),
        title: const Text("Request Song"),
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          Utils.bottomSheetRequestSong(context);
        },
        child: Container(
          // height: 32.h,
          // alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
          decoration: BoxDecoration(
              color: AppColors.grey, borderRadius: BorderRadius.circular(20.r)),
          child: Text(
            "Add New Song",
            style: textStyle(fontSize: 14.sp, weight: FontWeight.w400),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              spaceHeight(),
              Text(
                '''Fill in the song name, artist name, and optionally, Spotify and YouTube links. Click "Submit" to send your request. You'll receive a confirmation, and your requested song will be added in due course. Enjoy the music!''',
                textAlign: TextAlign.center,
                style: textStyle(fontSize: 14.sp, weight: FontWeight.w400),
              ),
              spaceHeight(30.h),
              ListView.builder(
                itemCount: 3,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    child: Row(
                      children: [
                        Container(
                            height: 50.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                              color: const Color(0XFF323232),
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "451",
                                  overflow: TextOverflow.ellipsis,
                                  style: textStyle(
                                      fontSize: 18.sp,
                                      weight: FontWeight.w400,
                                      color: const Color(0XFF8E8E8E)),
                                ),
                                Text(
                                  "Votes",
                                  overflow: TextOverflow.ellipsis,
                                  style: textStyle(
                                      fontSize: 10.sp,
                                      weight: FontWeight.w400,
                                      color: const Color(0XFF8E8E8E)),
                                ),
                              ],
                            )),
                        spaceWidth(),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {},
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Name above all name",
                                  overflow: TextOverflow.ellipsis,
                                  style: textStyle(
                                      fontSize: 18.sp, weight: FontWeight.w400),
                                ),
                                Text(
                                  "Hillsong",
                                  overflow: TextOverflow.ellipsis,
                                  style: textStyle(
                                      fontSize: 13.6.sp,
                                      weight: FontWeight.w400,
                                      color: const Color(0XFF8E8E8E)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        spaceWidth(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Image.asset(
                                "assets/images/thumb_up.png",
                                width: 19.w,
                                height: 17.h,
                                fit: BoxFit.fill,
                              ),
                            ),
                            spaceHeight(6.h),
                            Text(
                              "Upvote",
                              style: textStyle(
                                  fontSize: 10.h,
                                  weight: FontWeight.w400,
                                  color: AppColors.primaryYellow),
                            )
                          ],
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
