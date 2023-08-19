import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:platina/presentation/pages/home/widget/divider_widget.dart';
import 'package:platina/presentation/pages/home/widget/old_time.dart';
import 'package:platina/presentation/styles/theme_warpper.dart';

class TileCart extends StatelessWidget {
  final bool isSociety;

  const TileCart({
    super.key,
    this.isSociety = true,
  });

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (context, colors, fonts, icons, controller) {
        return Column(
          children: [
            const DividerWidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 200.w,
                      child: Text(
                        "Қўрқув, ҳаяжон, ўзига ишонч ёки ҳеч нарсани ҳис қилмаслик (фотоҳикоя)",
                        style: fonts.bold16,
                        maxLines: 3,
                      ),
                    ),
                    SizedBox(height: 16.h),
                    const OldTime(isSociety: false),
                  ],
                ),
                Container(
                  height: 92.h,
                  width: 120.w,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(icons.defaultImg),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
