import 'package:chords_app/res/colors.dart';
import 'package:chords_app/res/components/app_button_with_icon.dart';
import 'package:chords_app/view/auth/login.dart';
import 'package:chords_app/view/auth/register.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../global/global.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              "assets/images/onBoarding1.png",
              height: screenHeight * 0.6,
              width: screenWidth,
              fit: BoxFit.fill,
            ),
            Container(
              width: screenWidth,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppColors.bgColor.withOpacity(0.0),
                      AppColors.bgColor,
                      AppColors.bgColor,
                    ],
                    stops: const [
                      0,
                      0.63,
                      1
                    ]),
              ),
              child: Column(
                children: [
                  spaceHeight(screenHeight * 0.66),
                  AppButtonWithIcon(
                    width: screenWidth * 0.8,
                    btnText: "Sign up with Email",
                    onPress: () {
                      switchScreenPush(context, const RegisterScreen());
                    },
                    icon: "assets/images/email.png",
                  ),
                  spaceHeight(10.h),
                  AppButtonWithIcon(
                    width: screenWidth * 0.8,
                    isBorder: true,
                    btnText: "Continue with Google",
                    onPress: () {},
                    icon: "assets/images/google.png",
                  ),
                  spaceHeight(10.h),
                  AppButtonWithIcon(
                    isBorder: true,
                    width: screenWidth * 0.8,
                    btnText: "Continue with Facebook",
                    onPress: () {},
                    icon: "assets/images/facebook.png",
                  ),
                  spaceHeight(24.h),
                  RichText(
                    text: TextSpan(
                      text: "Already have an account?   ",
                      style:
                          textStyle(fontSize: 14.sp, weight: FontWeight.w500),
                      children: [
                        TextSpan(
                            text: "Log in",
                            style: textStyle(
                                color: AppColors.primaryYellow,
                                fontSize: 14.sp,
                                weight: FontWeight.w500),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                switchScreenPush(context, const LoginScreen());
                              }),
                      ],
                    ),
                  ),
                  spaceHeight(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
