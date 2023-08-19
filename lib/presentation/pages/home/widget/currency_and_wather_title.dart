import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:platina/presentation/styles/theme_warpper.dart';

class CurrencyAndWatherTitle extends StatelessWidget {
  const CurrencyAndWatherTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (context, colors, fonts, icons, controller) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
          child: Row(
            children: [
              SvgPicture.asset(icons.usd),
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(text: ' '),
                    TextSpan(text: 'USD ', style: fonts.medium16),
                    const TextSpan(text: ' '),
                    TextSpan(
                      text: '11318.74',
                      style: fonts.medium16.copyWith(color: colors.downRed),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Text('+9 °C ', style: fonts.medium16),
            ],
          ),
        );
      },
    );
  }
}
