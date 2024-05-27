import 'package:chords_app/res/colors.dart';
import 'package:chords_app/view/auth/profile/profile.dart';
import 'package:chords_app/view/playlist/resources.dart';
import 'package:chords_app/view_model/bottom_bar_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../global/global.dart';
import '../../view_model/auth_provider.dart';
import '../../view_model/drawer_provider.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer2<AuthProvider, DrawerProvider>(
        builder: (context, auth, drawer, child) {
      return ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: drawer.drawerMenuList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () async {
                if (index == 0 || index == 3) {
                  final tab =
                      Provider.of<BottomBarProvider>(context, listen: false);
                  tab.setPageView(4, const ProfileScreen());
                  if (index == 3) {
                    tab.setPageView(3, const ResourcesScreen());
                  }
                } else if (drawer.drawerMenuList[index]['class'] != null) {
                  switchScreenPushRTL(
                      context, drawer.drawerMenuList[index]['class']);
                }
                Scaffold.of(context).closeDrawer();
              },
              child: Container(
                color: AppColors.transparent,
                child: Column(children: [
                  spaceHeight(),
                  Row(
                    children: [
                      Icon(
                        drawer.drawerMenuList[index]['icon'],
                        color: AppColors.white,
                      ),
                      spaceWidth(),
                      Text(
                        drawer.drawerMenuList[index]['name'],
                        overflow: TextOverflow.ellipsis,
                        style: textStyle(
                          fontSize: 18.sp,
                          weight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  index == 4 || index == 6 || index == 8
                      ? Padding(
                          padding: EdgeInsets.only(top: 16.h),
                          child: Divider(
                            color: AppColors.white.withOpacity(0.2),
                            height: 16,
                          ),
                        )
                      : spaceHeight(),
                ]),
              ),
            );
          });
    });
  }
}
