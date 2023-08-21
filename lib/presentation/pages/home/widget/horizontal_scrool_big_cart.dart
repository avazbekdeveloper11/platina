import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:platina/infrastructure/models/popular_model/popular_model.dart';
import 'package:platina/presentation/pages/home/widget/arrow_tile.dart';
import 'package:platina/presentation/pages/home/widget/editor_choice_cart.dart';
import 'package:platina/presentation/styles/theme_warpper.dart';

class HorizontalScroolBigCart extends StatelessWidget {
  final PopularModel authorOfferedModel;
  const HorizontalScroolBigCart({super.key, required this.authorOfferedModel});

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (context, colors, fonts, icons, controller) {
        return Container(
          color: Colors.white,
          child: Column(
            children: [
              ArrowTile(title: "author_offered".tr()),
              SizedBox(
                height: 308.h,
                width: double.infinity,
                child: ListView.builder(
                  padding: EdgeInsets.only(right: 16.h),
                  itemCount: (authorOfferedModel.results?.length ?? 0) > 12
                      ? 12
                      : authorOfferedModel.results?.length ?? 0,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: colors.white,
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      child: EditorChoiceCart(
                        authorOfferedResultModel:
                            authorOfferedModel.results![index],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
