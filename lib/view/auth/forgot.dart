import 'package:chords_app/global/global.dart';
import 'package:chords_app/res/components/app_button.dart';
import 'package:chords_app/res/components/app_textfiels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotScreen extends StatelessWidget {
  const ForgotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();

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
                "Forgot Password",
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
              AppButton(
                btnText: "Submit",
                onPress: () {},
              ),
              spaceHeight(),
            ],
          ),
        ),
      ),
    );
  }
}
