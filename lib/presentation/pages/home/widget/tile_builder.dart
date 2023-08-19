import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:platina/infrastructure/models/popular_model/popular_model.dart';
import 'package:platina/presentation/pages/home/widget/tile_cart.dart';
import 'package:platina/presentation/styles/theme_warpper.dart';

class TileBuilder extends StatelessWidget {
  final PopularModel popularModel;
  final bool isSociety;

  const TileBuilder({
    super.key,
    this.isSociety = true,
    required this.popularModel,
  });

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (context, colors, fonts, icons, controller) {
        return ListView.builder(
          padding: EdgeInsets.only(bottom: 24.h),
          itemCount: popularModel.results?.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            PopularModelResult result = popularModel.results![index];
            if ((result.isPinned ?? false) && index != 0) {
              return TileCart(
                popularModelResult: popularModel.results![index],
              );
            } else {
              return const SizedBox();
            }
          },
        );
      },
    );
  }
}
