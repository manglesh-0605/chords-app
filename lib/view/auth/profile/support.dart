import 'package:chords_app/global/global.dart';
import 'package:chords_app/res/colors.dart';
import 'package:chords_app/res/components/app_button.dart';
import 'package:chords_app/res/components/app_textfiels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController message = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        leading: backIcon(context),
        title: const Text("Support"),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
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
                    "Reach us through",
                    style: textStyle(fontSize: 20.sp, weight: FontWeight.w500),
                  ),
                  spaceHeight(12.h),
                  SizedBox(
                    width: screenWidth * 0.6,
                    child: Text(
                      "Worship Paradise is also available on Whatsapp and Call/Chat Support",
                      textAlign: TextAlign.center,
                      style: textStyle(fontSize: 14.sp, weight: FontWeight.w400),
                    ),
                  ),
                  spaceHeight(),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 48.h,
                      width: screenWidth * 0.6,
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      decoration: BoxDecoration(
                        color: const Color(0XFFCAFFD3),
                        borderRadius: BorderRadius.circular(4.r),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.bgColor.withOpacity(0.1),
                            blurRadius: 12.0,
                            offset: const Offset(0, 6),
                          )
                        ],
                      ),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/whatsapp.png",
                            width: 24.w,
                            height: 24.h,
                            fit: BoxFit.fill,
                          ),
                          spaceWidth(8.w),
                          Text(
                            "Whatsapp",
                            style: textStyle(
                                weight: FontWeight.w500,
                                color: const Color(0XFF4B4B4B)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  spaceHeight(),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 44.h,
              width: double.infinity,
              color: Colors.blue, // Replace with your desired banner color
              child: Center(
                child: Text(
                  'App Banner',
                  style: textStyle(
                    fontSize: 18.sp,
                    weight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
