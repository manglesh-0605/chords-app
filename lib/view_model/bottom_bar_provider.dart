import 'package:flutter/material.dart';

import '../view/home.dart';

class BottomBarProvider with ChangeNotifier {
  int selectedTab = 0;
  PageStorageBucket storageBucket = PageStorageBucket();
  Widget selectPageView = const HomeScreen();

  void setPageView(int index, Widget screen) {
    selectedTab = index;
    selectPageView = screen;
    notifyListeners();
  }
}
