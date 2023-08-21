import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:platina/infrastructure/models/popular_model/popular_model.dart';
import 'package:platina/presentation/pages/home/widget/old_time.dart';
import 'package:platina/presentation/pages/home/widget/tile_builder.dart';
import 'package:platina/presentation/styles/theme_warpper.dart';

class PublicProcurmentCart extends StatelessWidget {
  final PopularModel? popularModel;
  final bool isSociety;
  const PublicProcurmentCart({
    super.key,
    required this.popularModel,
    this.isSociety = true,
  });

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (context, colors, fonts, icons, controller) {
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
                    image: CachedNetworkImageProvider(
                      popularModel?.results?.isNotEmpty ?? false
                          ? "https://platina.uz/_ipx/w_620/https://cp.platina.uz/${popularModel?.results?.first.image}"
                          : '',
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(16.r),
                ),
              ),
              SizedBox(height: 16.h),
              Text(
                popularModel?.results?.first.title ?? '',
                maxLines: 3,
                style: fonts.bold16.copyWith(fontSize: 18.sp),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16.h, bottom: 16.h),
                child: OldTime(
                  isSociety: isSociety,
                  popularModelResult: popularModel?.results?.first,
                ),
              ),
              TileBuilder(
                popularModel: popularModel,
                isSociety: isSociety,
                isNotPinned: true,
              ),
            ],
          ),
        );
      },
    );
  }
}
