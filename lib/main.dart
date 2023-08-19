import 'package:platina/domain/common/app_init.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'presentation/pages/core/app_widget.dart';

void main() async {
  await AppInit().appInitialized();

  runApp(
    ScreenUtilInit(
      useInheritedMediaQuery: true,
      designSize: const Size(375, 812),
      builder: (context, child) {
        return EasyLocalization(
          supportedLocales: const [
            Locale('ru', 'RU'),
            Locale('uz', 'UZ'),
            Locale('en', 'US'),
          ],
          path: 'assets/translation',
          startLocale: const Locale('ru', 'RU'),
          fallbackLocale: const Locale('ru', 'RU'),
          child: const AppWidget(),
        );
      },
    ),
  );
}
