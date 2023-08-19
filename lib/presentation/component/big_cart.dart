import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:platina/infrastructure/models/popular_model/popular_model.dart';
import 'package:platina/presentation/pages/home/widget/old_time.dart';
import 'package:platina/presentation/pages/home/widget/tile_builder.dart';
import 'package:platina/presentation/styles/theme_warpper.dart';
import 'package:simple_html_css/simple_html_css.dart';

class BigCart extends StatelessWidget {
  final PopularModel popularModel;
  const BigCart({super.key, required this.popularModel});

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
                      popularModel.results!.isNotEmpty
                          ? "https://platina.uz/_ipx/w_620/https://cp.platina.uz/${popularModel.results?.first.image}"
                          : '',
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(16.r),
                ),
              ),
              SizedBox(height: 16.h),
              Text(
                popularModel.results!.isNotEmpty
                    ? popularModel.results?.first.title ?? ''
                    : '',
                style: fonts.bold16.copyWith(fontSize: 18.sp),
              ),
              SizedBox(height: 10.h),
              HTML.toRichText(
                context,
                popularModel.results!.isNotEmpty
                    ? popularModel.results?.first.shortDescription ?? ''
                    : '',
                defaultTextStyle: fonts.regular14.copyWith(
                  color: colors.subtitle,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'more'.tr(),
                  style: fonts.regular14.copyWith(color: colors.link),
                ),
              ),
              SizedBox(height: 10.h),
              const OldTime(),
              TileBuilder(popularModel: popularModel),
            ],
          ),
        );
      },
    );
  }
}
