import 'package:chords_app/global/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: backIcon(context),
        title: const Text("Privacy Policy"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              spaceHeight(30.h),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sit amet est ac dui aliquet eleifend dignissim in lectus. Sed gravida, magna vel pharetra venenatis, nibh tortor blandit orci, ut suscipit lorem lorem id orci. Donec dapibus odio iaculis erat tempor, sed auctor arcu ultrices. Nam consectetur eros sit amet erat hendrerit sodales. Integer eleifend metus magna, facilisis maximus sem fermentum vel. Phasellus vitae pellentesque nibh. Donec iaculis iaculis odio, dictum malesuada ex tincidunt nec. Sed tristique libero ac mauris mollis efficitur.",
                style: textStyle(fontSize: 14.sp, weight: FontWeight.w500),
              ),
              spaceHeight(),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sit amet est ac dui aliquet eleifend dignissim in lectus. Sed gravida, magna vel pharetra venenatis, nibh tortor blandit orci, ut suscipit lorem lorem id orci. Donec dapibus odio iaculis erat tempor, sed auctor arcu ultrices. Nam consectetur eros sit amet erat hendrerit sodales. Integer eleifend metus magna, facilisis maximus sem fermentum vel. Phasellus vitae pellentesque nibh. Donec iaculis iaculis odio, dictum malesuada ex tincidunt nec. Sed tristique libero ac mauris mollis efficitur.",
                style: textStyle(fontSize: 14.sp, weight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
