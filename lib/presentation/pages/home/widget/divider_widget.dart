import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DividerWidget extends StatelessWidget {
  final double height;
  final double? spacing;
  const DividerWidget({super.key, this.height = 0, this.spacing});

  @override
  Widget build(BuildContext context) {
    return Divider(
      indent: spacing ?? 16.w,
      endIndent: spacing ?? 16.w,
      thickness: 1,
      height: height == 0 ? 30.h : height,
    );
  }
}
