import 'package:chords_app/global/global.dart';
import 'package:chords_app/res/colors.dart';
import 'package:chords_app/view/playlist/tabs/likes_songs.dart';
import 'package:chords_app/view/playlist/tabs/my_playlist.dart';
import 'package:chords_app/view_model/playlist_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class PlayList extends StatefulWidget {
  const PlayList({super.key});

  @override
  State<PlayList> createState() => _PlayListState();
}

class _PlayListState extends State<PlayList> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    final provider = Provider.of<PlayListProvider>(context, listen: false);
    tabController = TabController(
      initialIndex: 0,
      length: 2,
      vsync: this,
    );

    tabController.addListener(() {
      provider.setTabIndex(tabController.index);
    });
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<PlayListProvider>(builder: (context, list, child) {
      return DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
                list.selectedTabIndex == 0 ? "PlayList" : "All Likes Songs"),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(50.h),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  controller: tabController,
                  dividerHeight: 0,
                  labelStyle: textStyle(weight: FontWeight.w500),
                  unselectedLabelStyle:
                      textStyle(weight: FontWeight.w500, color: AppColors.grey),
                  indicatorColor: AppColors.primaryYellow,
                  isScrollable: true,
                  tabAlignment: TabAlignment.start,
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: const [
                    Tab(
                      text: "My Playlists",
                    ),
                    Tab(
                      text: "All Likes Songs",
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: TabBarView(
            controller: tabController,
            children: const [
              MyPlayList(),
              LikesSongs(),
            ],
          ),
        ),
      );
    });
  }
}
