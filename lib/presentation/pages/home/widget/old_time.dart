import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                  style: fonts.regular14.copyWith(color: colors.redishOrange),
                ),
              ),
            ),
            Text(
              popularModelResult?.publish ?? '',
              style: fonts.regular14.copyWith(color: colors.subText),
            ),
          ],
        );
      },
    );
  }
}
