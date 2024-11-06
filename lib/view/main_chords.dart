import 'package:chords_app/global/global.dart';
import 'package:chords_app/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainChords extends StatelessWidget {
  const MainChords({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: backIcon(context),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "At the Cross Love Ran Red",
              style: textStyle(
                  fontSize: 20.sp,
                  weight: FontWeight.w700,
                  color: AppColors.primaryYellow),
            ),
            Text(
              "Worship Paradise",
              style: textStyle(
                  fontSize: 12.sp,
                  weight: FontWeight.w500,
                  color: AppColors.greyText),
            ),
          ],
        ),
        actions: [
          CircleAvatar(
            radius: 24.r,
          ),
          spaceWidth(),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              spaceHeight(),
              Row(
                children: [
                  Text(
                    "Transpose:  +2",
                    style: textStyle(fontSize: 14.sp, weight: FontWeight.w400),
                  ),
                  const Spacer(),
                  spaceWidth(10.w),
                  Container(
                    height: 26.h,
                    width: 48..w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.white,
                      ),
                    ),
                    child: Text(
                      "Abm",
                      style:
                          textStyle(fontSize: 12.sp, weight: FontWeight.w500),
                    ),
                  ),
                  spaceWidth(),
                  Container(
                    height: 28.h,
                    width: 28..w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.white,
                      ),
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    child: Text(
                      "4/4",
                      style:
                          textStyle(fontSize: 12.sp, weight: FontWeight.w500),
                    ),
                  ),
                  spaceWidth(10.w),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.playlist_add_rounded,
                      color: AppColors.white,
                      size: 30.r,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_rounded,
                      color: Colors.red,
                      size: 30.r,
                    ),
                  ),
                ],
              ),
              Divider(height: 30.h),
              Center(
                child: Text(
                  "Posted By : Sylvester Dsouza",
                  style: textStyle(
                      fontSize: 14.sp,
                      weight: FontWeight.w500,
                      color: AppColors.grey),
                ),
              ),
              spaceHeight(),
              Center(
                child: Text(
                  "Chords Used in this Song",
                  style: textStyle(weight: FontWeight.w400, fontSize: 18.sp),
                ),
              ),
              spaceHeight(),
              Row(
                children: List.generate(
                  5,
                  (index) => Column(
                    children: [
                      Text(
                        "Em",
                        style: textStyle(
                            color: AppColors.greyText, weight: FontWeight.w400),
                      ),
                      spaceHeight(4.h),
                      Image.asset(
                        "assets/images/em.png",
                        height: 68.h,
                        width: 65.w,
                        fit: BoxFit.fill,
                      ),
                    ],
                  ),
                ),
              ),
              spaceHeight(),
              const SongLyrics(
                text: "[Intro]",
                color: AppColors.primaryYellow,
              ),
              const SongLyrics(
                text: "|Em    D|G    |C  |C  |",
                color: AppColors.greyText,
              ),
              spaceHeight(),
              const SongLyrics(
                text: "[Verse 1]",
                color: AppColors.primaryYellow,
              ),
              const SongLyrics(
                text: "Em           D     G                C",
                color: AppColors.greyText,
              ),
              const SongLyrics(
                text: "There’s a place, where mercy reigns and never dies",
              ),
              const SongLyrics(
                  text: "Em           D          G                    C",
                  color: AppColors.greyText),
              const SongLyrics(
                text:
                    "There’s a place, where streams of grace flows deep and wide",
              ),
              spaceHeight(),
              const SongLyrics(
                text: "[Pre-Chorus]",
                color: AppColors.primaryYellow,
              ),
              const SongLyrics(
                text: "D           C",
                color: AppColors.greyText,
              ),
              const SongLyrics(
                text: "All the love, I’ve ever found",
              ),
              const SongLyrics(
                text: "D                   C",
                color: AppColors.greyText,
              ),
              const SongLyrics(
                text: "Comes like a flood, comes flowing down",
              ),
              spaceHeight(),
              const SongLyrics(
                text: "[Chorus]",
                color: AppColors.primaryYellow,
              ),
              const SongLyrics(
                text: "C",
                color: AppColors.greyText,
              ),
              const SongLyrics(
                text: "At the cross, at the cross",
              ),
              const SongLyrics(
                text: "G",
                color: AppColors.greyText,
              ),
              const SongLyrics(
                text: "I surrender my life",
              ),
              const SongLyrics(
                text: "D                  Am",
                color: AppColors.greyText,
              ),
              const SongLyrics(
                text: "I’m in awe of you; I’m in awe of you",
              ),
              const SongLyrics(
                text: "C                     G",
                color: AppColors.greyText,
              ),
              const SongLyrics(
                text: "Where your love ran red, and my sins washed white",
              ),
              const SongLyrics(
                text: "D                 Am",
                color: AppColors.greyText,
              ),
              const SongLyrics(
                text: "I owe all to you, I owe all to you",
              ),
              const SongLyrics(
                text: "C      G",
                color: AppColors.greyText,
              ),
              const SongLyrics(text: "Jesus"),
            ],
          ),
        ),
      ),
    );
  }
}

class SongLyrics extends StatelessWidget {
  final String text;
  final Color? color;
  const SongLyrics({required this.text, this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle(weight: FontWeight.w400, color: color),
    );
  }
}
