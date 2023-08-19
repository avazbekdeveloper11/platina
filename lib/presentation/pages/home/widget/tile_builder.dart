import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:platina/presentation/pages/home/widget/tile_cart.dart';
import 'package:platina/presentation/styles/theme_warpper.dart';

class TileBuilder extends StatelessWidget {
  final bool isSociety;
  const TileBuilder({super.key, this.isSociety = true});

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (context, colors, fonts, icons, controller) {
        return ListView.builder(
          padding: EdgeInsets.only(bottom: 16.h),
          itemCount: 3,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return const TileCart();
          },
        );
      },
    );
  }
}
