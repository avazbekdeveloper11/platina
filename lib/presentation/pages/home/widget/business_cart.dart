import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:platina/presentation/styles/theme_warpper.dart';

class BusinessCart extends StatelessWidget {
  const BusinessCart({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (context, colors, fonts, icons, controller) {
        return Container(
          margin: EdgeInsets.only(left: 16.w),
          width: 280.w,
          child: Column(
            children: [
              Container(
                height: 180.h,
                width: 1.sw,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(icons.defaultImg),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(16.r),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.h),
                child: Text(
                  "Қўрқув, ҳаяжон, ўзига ишонч ёки ҳеч нарсани ҳис қилмаслик (фотоҳикоя)",
                  maxLines: 3,
                  style: fonts.bold16.copyWith(fontSize: 18.sp),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
