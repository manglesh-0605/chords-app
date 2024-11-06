import 'dart:async';

import 'package:chords_app/global/global.dart';
import 'package:chords_app/res/colors.dart';
import 'package:chords_app/view/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      Timer(const Duration(seconds: 3), () {
        switchScreenReplacement(context, const OnboardingScreen());
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: screenHeight,
      width: screenWidth,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bgImage.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        children: [
          spaceHeight(256.h),
          Image.asset(
            "assets/images/logo.png",
            width: 199.w,
          ),
          const Spacer(),
          SizedBox(
            width: screenWidth * 0.5,
            child: LinearProgressIndicator(
              value: controller.value,
              color: AppColors.white,
              backgroundColor: AppColors.grey,
            ),
          ),
          spaceHeight(6.h),
          Text(
            "Loading",
            style: textStyle(
                fontSize: 14.sp,
                weight: FontWeight.w500,
                color: AppColors.grey),
          ),
          spaceHeight(80.h),
          Text(
            "Version 1.0",
            style: textStyle(
                fontSize: 14.sp,
                weight: FontWeight.w500,
                color: AppColors.grey),
          ),
          spaceHeight(40.h),
        ],
      ),
    ));
  }
}
