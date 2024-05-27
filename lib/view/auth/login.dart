import 'package:chords_app/global/global.dart';
import 'package:chords_app/res/components/app_button.dart';
import 'package:chords_app/res/components/app_textfiels.dart';
import 'package:chords_app/view/auth/forgot.dart';
import 'package:chords_app/view/auth/register.dart';
import 'package:chords_app/view/bottom_navigation.dart/navigation_tab.dart';
import 'package:chords_app/view_model/auth_provider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../res/colors.dart';
import '../../res/components/app_button_with_icon.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    ValueNotifier obscurePassword = ValueNotifier<bool>(true);
    return Scaffold(
      appBar: AppBar(
        leading: backIcon(context),
        title: Image.asset(
          "assets/images/logo.png",
          width: 180.w,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              spaceHeight(40.h),
              Text(
                "Login to your account",
                style: textStyle(fontSize: 26.sp, weight: FontWeight.w700),
              ),
              spaceHeight(30.h),
              AppTextField(
                controller: email,
                keyType: TextInputType.emailAddress,
                hint: "Email",
                icon: Icons.email_outlined,
              ),
              spaceHeight(),
              ValueListenableBuilder(
                builder: (BuildContext context, value, Widget? child) {
                  return AppTextField(
                    controller: password,
                    keyType: TextInputType.text,
                    obscureText: obscurePassword.value,
                    hint: "Password",
                    icon: Icons.key,
                    suffixIcon: IconButton(
                      splashColor: Colors.transparent,
                      icon: Icon(
                        obscurePassword.value
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        color: AppColors.grey,
                        size: 24.r,
                      ),
                      onPressed: () {
                        obscurePassword.value = !obscurePassword.value;
                      },
                    ),
                  );
                },
                valueListenable: obscurePassword,
              ),
              spaceHeight(),
              Row(
                children: [
                  Consumer<AuthProvider>(builder: (context, auth, child) {
                    return Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      value: auth.isRemember,
                      onChanged: (value) {
                        auth.setRemember(value!);
                      },
                      activeColor: AppColors.white,
                      checkColor: AppColors.bgColor,
                    );
                  }),
                  Text(
                    'Remember me',
                    style: textStyle(fontSize: 12.sp, weight: FontWeight.w400),
                  ),
                ],
              ),
              spaceHeight(),
              AppButton(
                btnText: "Log in",
                onPress: () {
                  Navigator.pop(context);
                  switchScreenReplacement(context, const AppBottomBar());
                },
              ),
              spaceHeight(10.h),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    switchScreenPush(context, const ForgotScreen());
                  },
                  child: Text(
                    "Forgot the password ?",
                    style: textStyle(
                        fontSize: 12.sp,
                        weight: FontWeight.w500,
                        color: AppColors.primaryYellow),
                  ),
                ),
              ),
              spaceHeight(30.h),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 1.h,
                      color: AppColors.grey,
                    ),
                  ),
                  spaceWidth(),
                  Text(
                    'Or',
                    style: textStyle(weight: FontWeight.w500),
                  ),
                  spaceWidth(),
                  Expanded(
                    child: Container(
                      height: 1.h,
                      color: AppColors.grey,
                    ),
                  ),
                ],
              ),
              spaceHeight(30.h),
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
                  text: "Don’t have an account?   ",
                  style: textStyle(fontSize: 14.sp, weight: FontWeight.w500),
                  children: [
                    TextSpan(
                        text: "Register",
                        style: textStyle(
                            color: AppColors.primaryYellow,
                            fontSize: 14.sp,
                            weight: FontWeight.w500),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            switchScreenPush(context, const RegisterScreen());
                          }),
                  ],
                ),
              ),
              spaceHeight(),
            ],
          ),
        ),
      ),
    );
  }
}
