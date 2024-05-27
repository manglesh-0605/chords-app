import 'package:chords_app/global/global.dart';
import 'package:chords_app/res/colors.dart';
import 'package:chords_app/res/components/app_button.dart';
import 'package:chords_app/res/components/app_textfiels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController message = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: backIcon(context),
        title: const Text("Contact Us"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              spaceHeight(),
              Text(
                "Kindly share your message with us below and we will be happy to help you. ",
                textAlign: TextAlign.center,
                style: textStyle(
                    fontSize: 14.sp,
                    weight: FontWeight.w400,
                    color: AppColors.grey),
              ),
              spaceHeight(40.h),
              AppTextField(
                controller: name,
                hint: "Name",
                keyType: TextInputType.name,
              ),
              spaceHeight(12.h),
              AppTextField(
                controller: email,
                hint: "Email",
                keyType: TextInputType.emailAddress,
              ),
              spaceHeight(12.h),
              AppTextField(
                controller: message,
                hint: "Message",
                keyType: TextInputType.text,
                maxLines: 6,
              ),
              spaceHeight(12.h),
              AppButton(
                btnText: "Send",
                onPress: () {},
              ),
              spaceHeight(30.h),
              Text(
                "Contact us",
                style: textStyle(fontSize: 20.sp, weight: FontWeight.w500),
              ),
              spaceHeight(12.h),
              SizedBox(
                child: Text(
                  "Email : worshipparadise01@gmail.com",
                  textAlign: TextAlign.center,
                  style: textStyle(fontSize: 14.sp, weight: FontWeight.w400),
                ),
              ),
              spaceHeight(30.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      "assets/images/facebook_con.png",
                      height: 30.h,
                      width: 30.w,
                      fit: BoxFit.fill,
                    ),
                  ),
                  spaceWidth(),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      "assets/images/instagram.png",
                      height: 30.h,
                      width: 30.w,
                      fit: BoxFit.fill,
                    ),
                  ),
                  spaceWidth(),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      "assets/images/twitter.png",
                      height: 30.h,
                      width: 30.w,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              spaceHeight(),
            ],
          ),
        ),
      ),
    );
  }
}
