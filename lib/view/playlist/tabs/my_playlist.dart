import 'package:chords_app/global/global.dart';
import 'package:chords_app/res/colors.dart';
import 'package:chords_app/utils/utils.dart';
import 'package:chords_app/view/playlist/edit_playlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyPlayList extends StatelessWidget {
  const MyPlayList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {
          Utils.bottomSheetPlayList(context);
        },
        backgroundColor: AppColors.bgColor,
        child: Image.asset("assets/images/add.png"),
      ),
      body:
          // Padding(
          //     padding: EdgeInsets.symmetric(horizontal: 16.w),
          //     child:
          // Center(
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Text(
          //         "Empty Playlist",
          //         style: textStyle(fontSize: 26.sp, weight: FontWeight.w500),
          //       ),
          //       spaceHeight(10.h),
          //       Text(
          //         "Liked songs can be added to the playlist",
          //         style: textStyle(
          //             fontSize: 18.sp,
          //             weight: FontWeight.w500,
          //             color: AppColors.grey),
          //       ),
          //     ],
          //   ),
          // ),),
          Padding(
        padding: const EdgeInsets.only(top: 20),
        child: ListView.builder(
          itemCount: 26,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 28.h,
                  color: const Color(0XFF1E1E1E),
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    alphabet(index),
                    style: textStyle(
                        color: AppColors.grey, weight: FontWeight.w500),
                  ),
                ),
                spaceHeight(8.h),
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
                                    "15 Songs",
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
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.share_outlined,
                              color: Color(0XFFEC2137),
                            ),
                          ),
                          // spaceWidth(),
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
                ),
                spaceHeight(8.h),
              ],
            );
          },
        ),
      ),
    );
  }
}
