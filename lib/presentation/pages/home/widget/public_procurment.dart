import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:platina/presentation/pages/home/widget/arrow_tile.dart';
import 'package:platina/presentation/pages/home/widget/public_procurment_cart.dart';
import 'package:platina/presentation/styles/theme_warpper.dart';

class PublicProcurement extends StatelessWidget {
  const PublicProcurement({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (context, colors, fonts, icons, controller) {
      return Container(
        decoration: BoxDecoration(
          color: colors.white,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: const Column(
          children: [
            ArrowTile(title: "Давлат харидлари"),
            PublicProcurmentCart(),
          ],
        ),
      );
    });
  }
}
