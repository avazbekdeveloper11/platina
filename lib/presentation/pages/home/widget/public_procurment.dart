import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:platina/infrastructure/models/popular_model/popular_model.dart';
import 'package:platina/presentation/pages/home/widget/arrow_tile.dart';
import 'package:platina/presentation/pages/home/widget/public_procurment_cart.dart';
import 'package:platina/presentation/styles/theme_warpper.dart';

class PublicProcurement extends StatelessWidget {
  final PopularModel popularModel;
  const PublicProcurement({super.key, required this.popularModel});

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (context, colors, fonts, icons, controller) {
        return Container(
          decoration: BoxDecoration(
            color: colors.white,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Column(
            children: [
              ArrowTile(title: "public_procurment".tr()),
              PublicProcurmentCart(
                popularModel: popularModel,
                isSociety: false,
              ),
            ],
          ),
        );
      },
    );
  }
}
