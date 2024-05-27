import 'package:flutter/material.dart';

class SearchProvider extends ChangeNotifier {
  int _selectedTabIndex = 0;
  int get selectedTabIndex => _selectedTabIndex;

  void setTabIndex(int index) {
    _selectedTabIndex = index;
    notifyListeners();
  }
}