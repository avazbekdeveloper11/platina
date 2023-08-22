import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:platina/infrastructure/core/constant.dart';
import 'package:platina/infrastructure/models/categories_model/categories_model.dart';
import 'package:platina/presentation/pages/home/widget/divider_widget.dart';
import 'package:platina/presentation/pages/home/widget/url_laluncher.dart';
import 'package:platina/presentation/routes/routes.dart';
import 'package:platina/presentation/styles/theme_warpper.dart';

class DrawerWiidget extends StatelessWidget {
  final List<CategoriesModel> categoriesModel;
  final GlobalKey<ScaffoldState> scaffoldKey;
  const DrawerWiidget({
    super.key,
    required this.categoriesModel,
    required this.scaffoldKey,
  });

  @override
  Widget build(BuildContext context) {
    context.locale;
    return ThemeWrapper(
      builder: (context, colors, fonts, icons, controller) {
        return SingleChildScrollView(
          child: Container(
            width: 258.w,
            color: colors.white,
            child: Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: categoriesModel.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ListTile(
                      contentPadding: EdgeInsets.only(left: 16.w),
                      minLeadingWidth: 4.w,
                      minVerticalPadding: 0,
                      leading: Padding(
                        padding: EdgeInsets.only(top: 6.h),
                        child: SvgPicture.asset(icons.startDotDislabed),
                      ),
                      title: Text(
                        categoriesModel[index].name.toString(),
                        style: fonts.medium16,
                      ),
                    );
                  },
                ),
                DividerWidget(height: 20.h),
                Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: List<Widget>.generate(
                      2,
                      (index) => context.locale.languageCode ==
                              Constant.languageList[index]['lang']
                          ? Container(
                              margin: EdgeInsets.only(
                                left: index == 0 ? 0 : 20.w,
                                right: index != 0 ? 0 : 20.w,
                              ),
                              decoration: BoxDecoration(
                                color: colors.backgroundColor,
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                              padding: EdgeInsets.symmetric(
                                vertical: 12.h,
                                horizontal: 20.w,
                              ),
                              child: Text(
                                Constant.languageList[index]['name'],
                                style: context.locale.languageCode ==
                                        Constant.languageList[index]['lang']
                                    ? fonts.bold16
                                    : fonts.regular12
                                        .copyWith(color: colors.redishOrange),
                              ),
                            )
                          : GestureDetector(
                              onTap: () {
                                scaffoldKey.currentState!.closeDrawer();

                                Navigator.pushAndRemoveUntil(
                                  context,
                                  Routes.getAppWidget(),
                                  (route) => false,
                                );

                                if (context.locale.languageCode == 'uz') {
                                  context.setLocale(const Locale('ru', 'RU'));
                                } else if (context.locale.languageCode ==
                                    'ru') {
                                  context.setLocale(const Locale('uz', 'UZ'));
                                }
                              },
                              child: Text(
                                Constant.languageList[index]['name'],
                                style: fonts.medium14,
                              ),
                            ),
                    ),
                  ),
                ),
                DividerWidget(height: 20.h),
                Wrap(
                  spacing: 10.w,
                  children: List<Widget>.generate(
                    Constant.networkList.length,
                    (index) => GestureDetector(
                      onTap: () {
                        UrlLauncher.launchInBrowser(
                          url: Uri.parse(Constant.networkList[index]['url']),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 14.h),
                        height: 38.h,
                        width: 108.w,
                        decoration: BoxDecoration(
                          color: colors.networkColor,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              Constant.networkList[index]['icon'],
                              color: colors.primary,
                            ),
                            SizedBox(width: 6.w),
                            Text(
                              Constant.networkList[index]['name'],
                              style: fonts.medium14.copyWith(fontSize: 12.sp),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
