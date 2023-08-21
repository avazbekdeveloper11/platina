import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:platina/infrastructure/models/popular_model/popular_model.dart';
import 'package:platina/presentation/pages/home/widget/old_time.dart';
import 'package:platina/presentation/styles/theme_warpper.dart';

class EditorChoiceCart extends StatelessWidget {
  final PopularModelResult? authorOfferedResultModel;
  const EditorChoiceCart({super.key, required this.authorOfferedResultModel});

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (context, colors, fonts, icons, controller) {
        return Container(
          width: 288.w,
          margin: EdgeInsets.only(left: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 188.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: CachedNetworkImageProvider(
                      'https://platina.uz/_ipx/w_620/https://cp.platina.uz/${authorOfferedResultModel?.image}',
                    ),
                  ),
                ),
              ),
              Container(
                width: 200.w,
                margin: EdgeInsets.symmetric(vertical: 16.h),
                child: Text(
                  "Қўрқув, ҳаяжон, ўзига ишонч ёки ҳеч нарсани ҳис қилмаслик (фотоҳикоя)",
                  style: fonts.bold16,
                  maxLines: 3,
                ),
              ),
              const OldTime(),
            ],
          ),
        );
      },
    );
  }
}
