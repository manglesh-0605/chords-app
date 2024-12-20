import 'package:chords_app/view/auth/profile/profile.dart';
import 'package:chords_app/view/search/search.dart';
import 'package:chords_app/view/setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../global/global.dart';
import '../../res/colors.dart';
import '../../view_model/bottom_bar_provider.dart';
import '../drawer/drawer.dart';
import '../home.dart';
import '../playlist/playlist.dart';
import '../playlist/resources.dart';
import 'tab_button.dart';

class AppBottomBar extends StatelessWidget {
  const AppBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomBarProvider>(builder: (context, tab, child) {
      return PopScope(
        canPop: false,
        onPopInvoked: (bool key) {
          if (tab.selectedTab != 0) {
            tab.setPageView(0, const HomeScreen());
          }
        },
        child: Scaffold(
          appBar: tab.selectedTab == 0
              ? AppBar(
                  centerTitle: false,
                  title: Text(
                    "Worship Paradise",
                    style: textStyle(fontSize: 20.sp),
                  ),
                  actions: [
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        "assets/images/notification.png",
                        width: 30.w,
                        height: 30.h,
                        fit: BoxFit.fill,
                      ),
                    ),
                    spaceWidth(10.w),
                    GestureDetector(
                      onTap: () {
                        switchScreenPush(context, const SettingScreen());
                      },
                      child: Image.asset(
                        "assets/images/settings.png",
                        width: 30.w,
                        height: 30.h,
                        fit: BoxFit.fill,
                      ),
                    ),
                    spaceWidth(),
                  ],
                )
              : null,
          drawer: Container(
            color: AppColors.transparent,
            width: screenWidth,
            child: const AppDrawerMenu(),
          ),
          body:
              PageStorage(bucket: tab.storageBucket, child: tab.selectPageView),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: AppColors.black.withOpacity(0.2),
                  blurRadius: 6.0,
                )
              ],
            ),
            child: BottomAppBar(
              surfaceTintColor: AppColors.black,
              color: AppColors.black,
              shadowColor: AppColors.black,
              elevation: 0,
              notchMargin: 12,
              height: 64,
              padding: EdgeInsets.zero,
              shape: const CircularNotchedRectangle(),
              child: SafeArea(
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: TabButton(
                          icon: Icons.home_rounded,
                          text: "Home",
                          onTap: () {
                            if (tab.selectedTab != 0) {
                              tab.setPageView(0, const HomeScreen());
                            }
                          },
                          isSelected: tab.selectedTab == 0),
                    ),
                    Expanded(
                      child: TabButton(
                          icon: Icons.playlist_play_rounded,
                          text: "My Playlist",
                          onTap: () {
                            if (tab.selectedTab != 1) {
                              tab.setPageView(1, const PlayList());
                            }
                          },
                          isSelected: tab.selectedTab == 1),
                    ),
                    Expanded(
                      child: TabButton(
                          icon: Icons.search_rounded,
                          text: "Search",
                          onTap: () {
                            if (tab.selectedTab != 2) {
                              tab.setPageView(2, const SearchScreen());
                            }
                          },
                          isSelected: tab.selectedTab == 2),
                    ),
                    Expanded(
                      child: TabButton(
                          icon: Icons.description_rounded,
                          text: "Resources",
                          onTap: () {
                            if (tab.selectedTab != 3) {
                              tab.setPageView(3, const ResourcesScreen());
                            }
                          },
                          isSelected: tab.selectedTab == 3),
                    ),
                    Expanded(
                      child: TabButton(
                          icon: Icons.person_rounded,
                          text: "Profile",
                          onTap: () {
                            if (tab.selectedTab != 4) {
                              tab.setPageView(4, const ProfileScreen());
                            }
                          },
                          isSelected: tab.selectedTab == 4),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
