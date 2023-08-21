import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:platina/infrastructure/models/popular_model/popular_model.dart';
import 'package:platina/presentation/pages/home/widget/old_time.dart';
import 'package:platina/presentation/styles/theme_warpper.dart';

class BusinessCart extends StatelessWidget {
  final PopularModelResult businessResults;
  const BusinessCart({super.key, required this.businessResults});

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
                height: 200.h,
                width: 1.sw,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(
                      'https://platina.uz/_ipx/w_620/https://cp.platina.uz/${businessResults.image}',
                    ),
                    fit: BoxFit.fitWidth,
                  ),
                  borderRadius: BorderRadius.circular(16.r),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.h),
                child: Text(
                  businessResults.title ?? '',
                  maxLines: 3,
                  style: fonts.bold16.copyWith(fontSize: 18.sp),
                ),
              ),
              const Spacer(),
              OldTime(
                popularModelResult: businessResults,
              )
            ],
          ),
        );
      },
    );
  }
}
