import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:platina/presentation/pages/home/widget/old_time.dart';
import 'package:platina/presentation/pages/home/widget/tile_builder.dart';
import 'package:platina/presentation/styles/theme_warpper.dart';

class PublicProcurmentCart extends StatelessWidget {
  const PublicProcurmentCart({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (context, colors, fonts, icons, controller) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 240.h,
              width: 1.sw,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(icons.defaultImg),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(16.r),
              ),
            ),
            SizedBox(height: 16.h),
            Text(
              "Қўрқув, ҳаяжон, ўзига ишонч ёки ҳеч нарсани ҳис қилмаслик (фотоҳикоя)",
              maxLines: 3,
              style: fonts.bold16.copyWith(fontSize: 18.sp),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h, bottom: 16.h),
              child: OldTime(isSociety: false),
            ),
            // const TileBuilder(),
          ],
        ),
      );
    });
  }
}
