import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:platina/infrastructure/models/popular_model/popular_model.dart';
import 'package:platina/presentation/pages/home/widget/divider_widget.dart';
import 'package:platina/presentation/pages/home/widget/old_time.dart';
import 'package:platina/presentation/styles/theme_warpper.dart';

class TileCart extends StatelessWidget {
  final PopularModelResult? popularModelResult;
  final bool isSociety;
  const TileCart({
    super.key,
    this.isSociety = true,
    this.popularModelResult,
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
                        popularModelResult?.title ?? '',
                        style: fonts.bold16,
                        maxLines: 3,
                      ),
                    ),
                    SizedBox(height: 16.h),
                    OldTime(
                      isSociety: isSociety,
                      popularModelResult: popularModelResult,
                    ),
                  ],
                ),
                Container(
                  height: 92.h,
                  width: 120.w,
                  decoration: BoxDecoration(
                    image: popularModelResult?.image != null
                        ? DecorationImage(
                            image: CachedNetworkImageProvider(
                              'https://platina.uz/_ipx/w_620/https://cp.platina.uz/${popularModelResult?.image}',
                            ),
                            fit: BoxFit.cover,
                          )
                        : null,
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
