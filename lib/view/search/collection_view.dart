import 'package:chords_app/global/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../res/colors.dart';

class CollectionView extends StatelessWidget {
  const CollectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: backIcon(context),
        title: const Text("Venus Music"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            spaceHeight(),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: 132.h,
                  width: double.maxFinite,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/collection.png"),
                        fit: BoxFit.fill),
                  ),
                  child: Text(
                    "VENUS",
                    style: textStyle(fontSize: 30.sp, weight: FontWeight.w900),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 24.h,
                      alignment: Alignment.center,
                      color: AppColors.black,
                      margin: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 10.h),
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Text(
                        "15 Songs",
                        style:
                            textStyle(fontSize: 12.sp, weight: FontWeight.w400),
                      ),
                    ),
                    const Spacer(),
                    Container(
                        height: 24.h,
                        alignment: Alignment.center,
                        color: AppColors.black,
                        margin: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 10.h),
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Row(
                          children: [
                            Text(
                              "1255",
                              style: textStyle(
                                  fontSize: 14.sp, weight: FontWeight.w400),
                            ),
                            spaceWidth(10.w),
                            Icon(
                              Icons.thumb_up_outlined,
                              color: AppColors.white,
                              size: 20.r,
                            )
                          ],
                        )),
                  ],
                ),
              ],
            ),
            spaceHeight(),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.white54, // Color of the border
                    width: 2.0, // Width of the border
                  ),
                ),
              ),
              margin: const EdgeInsets.all(20.0),
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Text(
                  "Sunday Worship songs to practise with your band and easy to play",
                  style: TextStyle(color: Colors.white54,)),
            ),
            ListView.builder(
                itemCount: 10,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    child: Row(
                      children: [
                        spaceWidth(),
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
                                      fontSize: 13.6.sp,
                                      weight: FontWeight.w400),
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
                }),
          ],
        ),
      ),
    );
  }
}
