import 'package:chords_app/global/global.dart';
import 'package:chords_app/res/colors.dart';
import 'package:chords_app/res/components/app_button.dart';
import 'package:chords_app/res/components/app_textfiels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Utils {
  static bottomSheetPlayList(BuildContext context,
      {bool? isUpdate, String? n, String? d}) {
    TextEditingController name = TextEditingController();
    TextEditingController des = TextEditingController();
    if (isUpdate == true) {
      name.text = n.toString();
      des.text = d.toString();
    }
    return showModalBottomSheet(
      isDismissible: false,
      backgroundColor: AppColors.bgColor,
      context: context,
      enableDrag: false,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      builder: (BuildContext context) {
        return SizedBox(
          height: 260,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                spaceHeight(),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        isUpdate == true ? "Edit Playlist" : "Create Playlist",
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style:
                            textStyle(fontSize: 24.sp, weight: FontWeight.w700),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.clear,
                        color: AppColors.white,
                        size: 30.r,
                      ),
                    )
                  ],
                ),
                spaceHeight(),
                AppTextField(controller: name, hint: "Playlist Name"),
                spaceHeight(),
                AppTextField(controller: des, hint: "Description"),
                spaceHeight(),
                AppButton(
                    btnText: isUpdate == true ? "Update" : "Create",
                    onPress: () {}),
              ],
            ),
          ),
        );
      },
    );
  }

  static bottomSheetSongs(BuildContext context) {
    return showModalBottomSheet(
      isDismissible: false,
      backgroundColor: AppColors.bgColor,
      context: context,
      isScrollControlled: true,
      enableDrag: false,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      builder: (BuildContext context) {
        return SizedBox(
          height: 360,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                spaceHeight(),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Add Songs",
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style:
                            textStyle(fontSize: 24.sp, weight: FontWeight.w700),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.clear,
                        color: AppColors.white,
                        size: 30.r,
                      ),
                    )
                  ],
                ),
                spaceHeight(),
                Expanded(
                  child: DraggableScrollableSheet(
                      shouldCloseOnMinExtent: false,
                      initialChildSize: 1,
                      minChildSize: 1,
                      expand: false,
                      builder: (context, scrollController) {
                        return ListView.builder(
                          controller: scrollController,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                            fontSize: 13.6.sp,
                                            weight: FontWeight.w400),
                                      ),
                                      Divider(
                                        height: 20.h,
                                        color: AppColors.white.withOpacity(0.2),
                                      ),
                                    ],
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.add_circle_outline_rounded,
                                    size: 30.r,
                                    color: AppColors.primaryYellow,
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      }),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  static bottomSheetRequestSong(BuildContext context) {
    TextEditingController name = TextEditingController();
    TextEditingController artist = TextEditingController();
    TextEditingController youtube = TextEditingController();
    TextEditingController spotify = TextEditingController();

    return showModalBottomSheet(
      isDismissible: false,
      backgroundColor: AppColors.bgColor,
      context: context,
      enableDrag: false,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      builder: (BuildContext context) {
        return SizedBox(
          height: 390,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                spaceHeight(),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Request Song",
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style:
                            textStyle(fontSize: 24.sp, weight: FontWeight.w700),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.clear,
                        color: AppColors.white,
                        size: 30.r,
                      ),
                    )
                  ],
                ),
                spaceHeight(),
                AppTextField(controller: name, hint: "Song Name"),
                spaceHeight(),
                AppTextField(controller: artist, hint: "Artist Name"),
                spaceHeight(),
                AppTextField(controller: youtube, hint: "Youtube Link"),
                spaceHeight(),
                AppTextField(controller: spotify, hint: "Spotify Link"),
                spaceHeight(),
                AppButton(btnText: "Submit", onPress: () {}),
              ],
            ),
          ),
        );
      },
    );
  }
}
