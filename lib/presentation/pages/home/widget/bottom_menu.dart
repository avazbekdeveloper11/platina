import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:platina/infrastructure/core/constant.dart';
import 'package:platina/presentation/pages/home/widget/divider_widget.dart';
import 'package:platina/presentation/pages/home/widget/url_laluncher.dart';
import 'package:platina/presentation/styles/theme_warpper.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (context, colors, fonts, icons, controller) {
        return Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(16.r),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 16.h,
                    bottom: 12.h,
                  ),
                  child: SvgPicture.asset(icons.appLogo),
                ),
                Wrap(
                  spacing: 20.w,
                  children: [
                    Text(
                      'about_the_site'.tr(),
                      style: fonts.medium14,
                    ),
                    Text(
                      'advertising'.tr(),
                      style: fonts.medium14,
                    ),
                    Text(
                      'privacy_policy'.tr(),
                      style: fonts.medium14,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.h),
                  child: RichText(
                    text: TextSpan(
                      text: 'bottom_menu_1'.tr(),
                      children: [
                        const TextSpan(text: '\n\n'),
                        TextSpan(text: 'bottom_menu_2'.tr()),
                      ],
                      style: fonts.regular12.copyWith(color: colors.subtitle),
                    ),
                  ),
                ),
                const DividerWidget(spacing: 0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 160.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                          Constant.networkList.length,
                          (index) => GestureDetector(
                            onTap: () {
                              UrlLauncher.launchInBrowser(
                                url: Uri.parse(
                                    Constant.networkList[index]['url']),
                              );
                            },
                            child: SvgPicture.asset(
                              Constant.networkList[index]['icon'],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 6.w, vertical: 8.w),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: colors.networkColor,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Text(
                        '18+',
                        style: fonts.medium14,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 16.h),
                Row(
                  children: [
                    SvgPicture.asset(icons.redmedia),
                    SizedBox(width: 10.w),
                    Text(
                      'development_by'.tr(),
                      style: fonts.regular12.copyWith(color: colors.subtitle),
                    ),
                  ],
                ),
                SizedBox(height: 28.h),
              ],
            ),
          ),
        );
      },
    );
  }
}
