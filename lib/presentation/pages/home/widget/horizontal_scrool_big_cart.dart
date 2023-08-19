import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:platina/presentation/pages/home/widget/arrow_tile.dart';
import 'package:platina/presentation/pages/home/widget/editor_choice_cart.dart';
import 'package:platina/presentation/styles/theme_warpper.dart';

class HorizontalScroolBigCart extends StatelessWidget {
  const HorizontalScroolBigCart({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (context, colors, fonts, icons, controller) {
        return Container(
          color: Colors.white,
          child: Column(
            children: [
              const ArrowTile(title: "Муҳаррир танлови"),
              SizedBox(
                height: 300.h,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: colors.white,
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      child: const EditorChoiceCart(),
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
