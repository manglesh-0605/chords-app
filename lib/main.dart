import 'package:chords_app/res/colors.dart';
import 'package:chords_app/view/bottom_navigation.dart/navigation_tab.dart';

import 'package:chords_app/view_model/bottom_bar_provider.dart';
import 'package:chords_app/view_model/onboarding_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'global/global.dart';
import 'view/splash.dart';
import 'view_model/auth_provider.dart';
import 'view_model/drawer_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.sizeOf(context).width;
    screenHeight = MediaQuery.sizeOf(context).height;
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarColor: AppColors.bgColor,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.light,
        systemNavigationBarColor: AppColors.bgColor,
      ),
      child: ScreenUtilInit(
          designSize: Size(screenWidth, screenHeight),
          useInheritedMediaQuery: true,
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return MultiProvider(
              providers: [
                ChangeNotifierProvider(create: (_) => OnBoardingProvider()),
                ChangeNotifierProvider(create: (_) => AuthProvider()),
                ChangeNotifierProvider(create: (_) => BottomBarProvider()),
                ChangeNotifierProvider(create: (_) => DrawerProvider()),
              ],
              child: MaterialApp(
                theme: ThemeData(
                  colorScheme:
                      ColorScheme.fromSeed(seedColor: AppColors.primaryYellow),
                  useMaterial3: true,
                  scaffoldBackgroundColor: AppColors.bgColor,
                  appBarTheme: AppBarTheme(
                      centerTitle: true,
                      backgroundColor: AppColors.bgColor,
                      foregroundColor: AppColors.white,
                      titleTextStyle:
                          textStyle(fontSize: 26.sp, weight: FontWeight.w600)),
                  inputDecorationTheme: InputDecorationTheme(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.r),
                        borderSide: const BorderSide(color: AppColors.white)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.r),
                      borderSide: const BorderSide(color: AppColors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.r),
                      borderSide: const BorderSide(color: AppColors.white),
                    ),
                    // errorBorder: OutlineInputBorder(
                    //     borderRadius: BorderRadius.circular(12.r),
                    //     borderSide: const BorderSide(color: AppColor.appColor)),
                    // focusedErrorBorder: OutlineInputBorder(
                    //     borderRadius: BorderRadius.circular(12.r),
                    //     borderSide: const BorderSide(color: AppColor.appColor)),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.r),
                      borderSide: const BorderSide(color: AppColors.white),
                    ),
                    hintStyle: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.grey),
                  ),
                ),
                home: const SplashScreen(),
              ),
            );
          }),
    );
  }
}
