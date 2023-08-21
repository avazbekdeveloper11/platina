import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:platina/infrastructure/models/popular_model/popular_model.dart';
import 'package:platina/presentation/pages/home/widget/arrow_tile.dart';
import 'package:platina/presentation/pages/home/widget/business_cart.dart';
import 'package:platina/presentation/styles/theme_warpper.dart';

class BusinessBuilder extends StatelessWidget {
  final List<PopularModelResult> bussinessModel;
  const BusinessBuilder({super.key, required this.bussinessModel});

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
              ArrowTile(title: 'business'.tr()),
              SizedBox(
                height: 332.h,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: bussinessModel.length,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(right: 16.h),
                  itemBuilder: (_, index) {
                    return BusinessCart(
                      businessResults: bussinessModel[index],
                    );
                  },
                ),
              ),
              SizedBox(height: 16.h)
            ],
          ),
        );
      },
    );
  }
}
