import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:platina/infrastructure/models/popular_model/popular_model.dart';
import 'package:platina/presentation/pages/home/widget/arrow_tile.dart';
import 'package:platina/presentation/pages/home/widget/divider_widget.dart';
import 'package:platina/presentation/styles/theme_warpper.dart';

class CartTitleBuilder extends StatelessWidget {
  final PopularModel articlesModel;
  const CartTitleBuilder({super.key, required this.articlesModel});

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (context, colors, fonts, icons, controller) {
        return Container(
          decoration: BoxDecoration(
            color: colors.white,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Column(
            children: [
              ArrowTile(title: 'articles'.tr()),
              ListView.separated(
                itemCount: (articlesModel.results?.length ?? 0) > 6
                    ? 6
                    : articlesModel.results?.length ?? 0,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) => const DividerWidget(),
                itemBuilder: (BuildContext context, int index) {
                  final PopularModelResult model =
                      articlesModel.results![index];
                  return Padding(
                    padding: EdgeInsets.only(
                      left: 16.w,
                      right: 16.w,
                      bottom: 16.h,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 240.h,
                          width: double.infinity,
                          margin: EdgeInsets.only(bottom: 16.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.r),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: CachedNetworkImageProvider(
                                'https://platina.uz/_ipx/w_620/https://cp.platina.uz/${model.image}',
                              ),
                            ),
                          ),
                        ),
                        Text(
                          model.title ?? '',
                          style: fonts.bold16.copyWith(fontSize: 18.sp),
                          maxLines: 2,
                        ),
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        );
      },
    );
  }
}
