import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OnBoardingProvider extends ChangeNotifier {
  PageController pageController = PageController();
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  void setCurrentIndex(int i) {
    _currentIndex = i;
    notifyListeners();
  }

  final onBoardingPage = [
    {
      "image": "assets/images/onBoarding1.png",
      "title": "Find Chords to Any Gospel Song",
      "subTitle":
          "The artists we represent are one of the most successful in Romania and also were a huge breakthrough."
    },
    {
      "image": "assets/images/onBoarding2.png",
      "title": "Discover Now Songs As you progress",
      "subTitle":
          "The artists we represent are one of the most successful in Romania and also were a huge breakthrough."
    },
    {
      "image": "assets/images/onBoarding3.png",
      "title": "Save songs and play them later",
      "subTitle":
          "The artists we represent are one of the most successful in Romania and also were a huge breakthrough."
    },
  ];
}
