import 'package:chords_app/global/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResourcesScreen extends StatelessWidget {
  const ResourcesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Resources"),
      ),
      body: Stack(
        children: [
          // Main content

          GridView.builder(
            itemCount: 10,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: screenWidth * 0.6,
                crossAxisSpacing: 16.h,
                mainAxisSpacing: 16.h,
                mainAxisExtent: 86.h),
            itemBuilder: (context, index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(6.r),
                child: Image.asset("assets/images/blog.png"),
              );
            },
          ),

          // Banner at the bottom
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 44.h,
              width: double.infinity,
              color: Colors.blue,
              child: Center(
                child: Text(
                  "App Banner",
                  style: textStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    weight: FontWeight.bold,
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
