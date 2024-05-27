import 'package:chords_app/global/global.dart';
import 'package:chords_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../res/colors.dart';

class EditPlayList extends StatelessWidget {
  const EditPlayList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: backIcon(context),
        title: const Text("Edit Playlist"),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {
          Utils.bottomSheetSongs(context);
        },
        backgroundColor: AppColors.bgColor,
        child: Image.asset("assets/images/add.png"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            spaceHeight(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Praise & Worship",
                      overflow: TextOverflow.ellipsis,
                      style:
                          textStyle(fontSize: 24.sp, weight: FontWeight.w700),
                    ),
                  ),
                  spaceWidth(),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/images/share.png",
                        height: 30.h,
                        width: 30.w,
                        fit: BoxFit.fill,
                      )),
                  // spaceWidth(),
                  IconButton(
                      onPressed: () {
                        Utils.bottomSheetPlayList(context,
                            isUpdate: true, n: '', d: '');
                      },
                      icon: Image.asset(
                        "assets/images/edit.png",
                        height: 30.h,
                        width: 30.w,
                        fit: BoxFit.fill,
                      )),
                ],
              ),
            ),
            spaceHeight(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Text(
                "Fill in the song name, artist name, and optionally, Spotify and YouTube links.",
                style: textStyle(fontSize: 14.sp, weight: FontWeight.w400),
              ),
            ),
            Divider(
              height: 40.h,
              color: AppColors.white.withOpacity(0.2),
            ),
            ListView.builder(
              itemCount: 5,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
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
                          onTap: () {
                            switchScreenPush(context, const EditPlayList());
                          },
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
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.delete_outlined,
                          color: AppColors.grey,
                        ),
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
