import 'package:chords_app/global/global.dart';
import 'package:chords_app/res/colors.dart';
import 'package:chords_app/view/search/search_tab/artist.dart';
import 'package:chords_app/view/search/search_tab/collection.dart';
import 'package:chords_app/view/search/search_tab/song.dart';

import 'package:chords_app/view_model/search_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    final provider = Provider.of<SearchProvider>(context, listen: false);
    tabController = TabController(
      initialIndex: 0,
      length: 3,
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
    return Consumer<SearchProvider>(builder: (context, search, child) {
      return DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            title: Text(search.selectedTabIndex == 0
                ? "Search Chords by Songs"
                : search.selectedTabIndex == 1
                    ? "Search Chords by Artists"
                    : "Search Collection"),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(130.h),
              child: Column(
                children: [
                  spaceHeight(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: SizedBox(
                      height: 40.h,
                      child: TextField(
                        // controller: controller,
                        style: textStyle(weight: FontWeight.w600),
                        cursorColor: AppColors.white,
                        keyboardType: TextInputType.text,
                        onTapOutside: (event) {
                          // FocusScope.of(context).unfocus();
                        },
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0XFF282828),
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4.r),
                              borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4.r),
                              borderSide: BorderSide.none),
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 16.w),
                          hintText: search.selectedTabIndex == 0
                              ? "Search Songs"
                              : search.selectedTabIndex == 1
                                  ? "Search Artists"
                                  : "Search Collection",
                          hintStyle: textStyle(
                              weight: FontWeight.w400, color: AppColors.grey),
                          prefixIcon: const Icon(
                            Icons.search_rounded,
                            size: 20.0,
                            color: AppColors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  spaceHeight(),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TabBar(
                      controller: tabController,
                      dividerHeight: 0,
                      labelStyle: textStyle(weight: FontWeight.w500),
                      unselectedLabelStyle: textStyle(
                          weight: FontWeight.w500, color: AppColors.grey),
                      indicatorColor: AppColors.primaryYellow,
                      isScrollable: true,
                      tabAlignment: TabAlignment.start,
                      indicatorSize: TabBarIndicatorSize.tab,
                      tabs: const [
                        Tab(
                          text: "Songs",
                        ),
                        Tab(
                          text: "Artists",
                        ),
                        Tab(
                          text: "Collections",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(
            controller: tabController,
            children: const [
              SongTab(),
              ArtistTab(),
              CollectionTab(),
            ],
          ),
        ),
      );
    });
  }
}
