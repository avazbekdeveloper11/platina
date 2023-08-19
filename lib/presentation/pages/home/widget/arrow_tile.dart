import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:platina/presentation/styles/theme_warpper.dart';

class ArrowTile extends StatelessWidget {
  final String title;
  const ArrowTile({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (context, colors, fonts, icons, controller) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Row(
            children: [
              SvgPicture.asset(icons.starDot),
              const SizedBox(width: 8),
              Text(
                title,
                style: fonts.bold16.copyWith(fontSize: 18.sp),
              ),
              const Spacer(),
              SvgPicture.asset(icons.arrowRight),
            ],
          ),
        );
      },
    );
  }
}
