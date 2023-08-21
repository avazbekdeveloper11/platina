import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:platina/presentation/component/shimmer_view.dart';

class HomeShimmerView extends StatelessWidget {
  const HomeShimmerView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ShimmerView(
              child: ShimmerContainer(
                width: 1.sw,
                height: 44.h,
                borderRadius: 0,
              ),
            ),
            ShimmerView(
              child: ShimmerContainer(
                margin: EdgeInsets.symmetric(
                  vertical: 20.h,
                  horizontal: 16.w,
                ),
                width: 1.sw,
                height: 200.h,
              ),
            ),
            ShimmerView(
              child: ShimmerContainer(
                margin: EdgeInsets.only(bottom: 20.h, left: 16.w, right: 16.w),
                width: 1.sw,
                height: 44.h,
              ),
            ),
            ShimmerView(
              child: ShimmerContainer(
                margin: EdgeInsets.only(bottom: 20.h, left: 16.w, right: 16.w),
                width: 1.sw,
                height: 400.h,
              ),
            ),
            ShimmerView(
              child: ShimmerContainer(
                margin: EdgeInsets.only(bottom: 20.h, left: 16.w, right: 16.w),
                width: 1.sw,
                height: 400.h,
              ),
            ),
            ShimmerView(
              child: ShimmerContainer(
                margin: EdgeInsets.only(bottom: 20.h, left: 16.w, right: 16.w),
                width: 1.sw,
                height: 400.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
