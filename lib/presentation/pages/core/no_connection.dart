// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:platina/infrastructure/services/connectivity.dart';
import 'package:platina/presentation/routes/routes.dart';
import 'package:platina/presentation/styles/theme_warpper.dart';

class NoConnection extends StatefulWidget {
  const NoConnection({Key? key}) : super(key: key);

  @override
  State<NoConnection> createState() => _NoConnectionState();
}

class _NoConnectionState extends State<NoConnection> {
  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (context, colors, fonts, icons, c) {
        return Scaffold(
          backgroundColor: colors.backgroundColor,
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Center(
                //   child: SvgPicture.asset(c.isDark
                //       ? icons.noConnectionDarkSvg
                // : icons.noConnectionLightSvg),
                // ),
                SizedBox(height: 25.h),
                Text('connection_is_afk'.tr(), style: fonts.regular12),
                SizedBox(height: 20.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60.w),
                  child: Text(
                    'no_connection_body'.tr(),
                    textAlign: TextAlign.center,
                    style: fonts.regular12,
                  ),
                ),
                SizedBox(height: 20.h),
                TextButton(
                  onPressed: () async {
                    EasyLoading.show();
                    bool result = await ConnectivityX().create();
                    if (result) {
                      Navigator.pushAndRemoveUntil(
                          context, Routes.getAppWidget(), (route) => false);
                    }
                    EasyLoading.dismiss();
                  },
                  child: Text('retry'.tr()),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
