import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:platina/infrastructure/core/extensions.dart';
import 'package:platina/infrastructure/models/popular_model/popular_model.dart';
import 'package:platina/presentation/styles/theme_warpper.dart';

class OldTime extends StatelessWidget {
  final bool isSociety;
  final PopularModelResult? popularModelResult;
  const OldTime({
    super.key,
    this.isSociety = true,
    this.popularModelResult,
  });

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (context, colors, fonts, icons, controller) {
        return Row(
          children: [
            Visibility(
              visible: isSociety,
              child: Padding(
                padding: EdgeInsets.only(right: 14.w),
                child: Text(
                  popularModelResult?.category?.name ?? '',
                  style: fonts.regular14.copyWith(
                    color: popularModelResult?.category?.color != null
                        ? HexColor.fromHex(
                            popularModelResult?.category?.color ?? '')
                        : colors.redishOrange,
                  ),
                ),
              ),
            ),
            Text(
              timeFormater(popularModelResult?.publish ?? ''),
              style: fonts.regular14.copyWith(color: colors.subText),
            ),
          ],
        );
      },
    );
  }

  String timeFormater(String text) {
    if (text.isEmpty) return '';
    DateTime dateTime = DateTime.now();
    DateTime res = DateTime.parse(text);
    int year = dateTime.year - res.year;
    int month = dateTime.month - res.month;
    int day = dateTime.day - res.day;
    int hour = dateTime.hour - res.hour;

    if (year != 0) {
      return "$year ${'year_ago'.tr()} ${text.substring(11, 16)}";
    } else if (month != 0) {
      switch (res.month) {
        case 01:
          return "${res.day} ${'january'.tr()} ${text.substring(11, 16)}";
        case 02:
          return "${res.day} ${'february'.tr()} ${text.substring(11, 16)}";
        case 03:
          return "${res.day} ${'march'.tr()} ${text.substring(11, 16)}";
        case 04:
          return "${res.day} ${'april'.tr()} ${text.substring(11, 16)}";
        case 05:
          return "${res.day} ${'may'.tr()} ${text.substring(11, 16)}";
        case 06:
          return "${res.day} ${'june'.tr()} ${text.substring(11, 16)}";
        case 07:
          return "${res.day} ${'july'.tr()} ${text.substring(11, 16)}";
        case 08:
          return "${res.day} ${'august'.tr()} ${text.substring(11, 16)}";
        case 09:
          return "${res.day} ${'september'.tr()} ${text.substring(11, 16)}";
        case 10:
          return "${res.day} ${'october'.tr()} ${text.substring(11, 16)}";
        case 11:
          return "${res.day} ${'november'.tr()} ${text.substring(11, 16)}";
        case 12:
          return "${res.day} ${'december'.tr()} ${text.substring(11, 16)}";
        default:
          return "";
      }
    } else if (day == 1) {
      return "${'yesterday'.tr()}, ${text.substring(11, 16)}";
    } else if (day != 0) {
      return "$day ${'the_day_before'.tr()}, ${text.substring(11, 16)}";
    } else if (hour != 0) {
      return "$hour ${'hour_ago'.tr()}";
    }
    return '';
  }
}
