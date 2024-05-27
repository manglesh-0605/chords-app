import 'package:chords_app/view/auth/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../global/global.dart';
import '../res/colors.dart';
import '../res/components/app_button.dart';
import '../view_model/onboarding_provider.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Consumer<OnBoardingProvider>(builder: (context, board, child) {
          return Stack(
            alignment: Alignment.topRight,
            children: [
              PageView.builder(
                controller: board.pageController,
                itemCount: board.onBoardingPage.length,
                onPageChanged: (value) {
                  board.setCurrentIndex(value);
                },
                itemBuilder: (context, index) {
                  return Container(
                    height: screenHeight * 0.8,
                    alignment: Alignment.center,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              board.onBoardingPage[index]['image'].toString(),
                              height: screenHeight * 0.58,
                              width: screenWidth,
                              fit: BoxFit.fill,
                            ),
                          ],
                        ),
                        Positioned(
                          bottom: 152.h,
                          child: Container(
                            width: screenWidth * 0.84,
                            color: AppColors.bgColor,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  spaceHeight(50.h),
                                  Text(
                                    board.onBoardingPage[index]['title']
                                        .toString(),
                                    style: textStyle(
                                      fontSize: 25.sp,
                                      weight: FontWeight.w900,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  spaceHeight(26.h),
                                  Text(
                                    board.onBoardingPage[index]['subTitle']
                                        .toString(),
                                    style: textStyle(
                                      fontSize: 15.sp,
                                      weight: FontWeight.w500,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    maxLines: 3,
                                  ),
                                  spaceHeight(10.h),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
              Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                indicator(),
                spaceHeight(26.h),
                board.currentIndex + 1 == board.onBoardingPage.length
                    ? AppButton(
                        btnText: "Get Started",
                        onPress: () {
                          switchScreenReplacement(context, const AuthScreen());
                        },
                        width: screenWidth * 0.6,
                      )
                    : AppButton(
                        btnText: "Next",
                        width: screenWidth * 0.6,
                        onPress: () {
                          board.setCurrentIndex(board.currentIndex + 1);
                          board.pageController.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.linear,
                          );
                        },
                      ),
                spaceHeight(26.h),
              ]),
            ],
          );
        }),
      ),
    );
  }

  indicator() {
    return Consumer<OnBoardingProvider>(builder: (context, board, child) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          board.onBoardingPage.length,
          (index) => Container(
            height: 6.6.h,
            width: 6.6.w,
            margin: const EdgeInsets.symmetric(horizontal: 6),
            decoration: BoxDecoration(
                border: board.currentIndex != index
                    ? Border.all(color: AppColors.white)
                    : null,
                shape: BoxShape.circle,
                color: board.currentIndex == index
                    ? AppColors.white
                    : AppColors.bgColor),
          ),
        ),
      );
    });
  }
}
