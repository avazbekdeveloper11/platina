import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:platina/infrastructure/models/popular_model/popular_model.dart';
import 'package:platina/presentation/pages/home/widget/old_time.dart';
import 'package:platina/presentation/pages/home/widget/tile_builder.dart';
import 'package:platina/presentation/styles/theme_warpper.dart';
import 'package:simple_html_css/simple_html_css.dart';

class BigCart extends StatefulWidget {
  final PopularModel popularModel;
  const BigCart({super.key, required this.popularModel});

  @override
  State<BigCart> createState() => _BigCartState();
}

class _BigCartState extends State<BigCart> {
  bool showText = false;

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
                      widget.popularModel.results!.isNotEmpty
                          ? "https://platina.uz/_ipx/w_620/https://cp.platina.uz/${widget.popularModel.results?.first.image}"
                          : '',
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(16.r),
                ),
              ),
              SizedBox(height: 16.h),
              Text(
                widget.popularModel.results!.isNotEmpty
                    ? widget.popularModel.results?.first.title ?? ''
                    : '',
                style: fonts.bold16.copyWith(fontSize: 18.sp),
              ),
              SizedBox(height: 10.h),
              HTML.toRichText(
                context,
                showText
                    ? widget.popularModel.results!.isNotEmpty
                        ? widget.popularModel.results?.first.description ?? ''
                        : ''
                    : widget.popularModel.results!.isNotEmpty
                        ? widget.popularModel.results?.first.shortDescription ??
                            ''
                        : '',
                defaultTextStyle: fonts.regular14.copyWith(
                  color: colors.subtitle,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    showText = !showText;
                  });
                },
                child: Text(
                  'more'.tr(),
                  style: fonts.regular14.copyWith(color: colors.link),
                ),
              ),
              SizedBox(height: 10.h),
              OldTime(
                popularModelResult: widget.popularModel.results?.first,
              ),
              TileBuilder(popularModel: widget.popularModel),
            ],
          ),
        );
      },
    );
  }
}
