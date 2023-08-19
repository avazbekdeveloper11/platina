import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:platina/presentation/component/big_cart.dart';
import 'package:platina/presentation/pages/home/widget/arrow_tile.dart';
import 'package:platina/presentation/styles/theme_warpper.dart';

class ImportantNews extends StatelessWidget {
  const ImportantNews({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (context, colors, fonts, icons, controller) {
        return Container(
          decoration: BoxDecoration(
            color: colors.white,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: const Column(
            children: [
              ArrowTile(title: "Муҳаррир танлови"),
              BigCart(),
            ],
          ),
        );
      },
    );
  }
}
