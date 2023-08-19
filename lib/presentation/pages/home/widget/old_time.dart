import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:platina/presentation/styles/theme_warpper.dart';

class OldTime extends StatelessWidget {
  final bool isSociety;
  const OldTime({
    super.key,
    this.isSociety = true,
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
                  "Жамият",
                  style: fonts.regular14.copyWith(color: colors.redishOrange),
                ),
              ),
            ),
            Text(
              "20 дақиқа аввал",
              style: fonts.regular14.copyWith(color: colors.subText),
            ),
          ],
        );
      },
    );
  }
}
