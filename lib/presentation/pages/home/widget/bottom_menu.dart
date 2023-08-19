import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:platina/presentation/pages/home/widget/divider_widget.dart';
import 'package:platina/presentation/styles/theme_warpper.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (context, colors, fonts, icons, controller) {
        return Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(16.r),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 16.h,
                    bottom: 12.h,
                  ),
                  child: SvgPicture.asset(icons.appLogo),
                ),
                Wrap(
                  spacing: 20.w,
                  children: [
                    Text(
                      'Сайт ҳақида',
                      style: fonts.medium14,
                    ),
                    Text(
                      'Реклама',
                      style: fonts.medium14,
                    ),
                    Text(
                      'Маҳфийлик сиёсати',
                      style: fonts.medium14,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.h),
                  child: RichText(
                    text: TextSpan(
                      text:
                          '© 2023 Platina.uz. Барча ҳуқуқлар ҳимояланган. «Platina.uz» сайтида жойланган маълумотлар муаллифнинг шахсий фикри. Сайтда жойланган ҳар қандай материалларни ёзма рухсатсиз фойдаланиш таъқиқланади.',
                      children: const [
                        TextSpan(text: '\n\n'),
                        TextSpan(
                            text:
                                'Ўзбекистон Республикаси Президенти Администрацияси ҳузуридаги Ахборот ва оммавий коммуникациялар агентлиги томонидан 02.12.2022 санасида №051412 сонли гувоҳнома билан ОАВ сифатида рўйхатга олинган'),
                      ],
                      style: fonts.regular12.copyWith(color: colors.subtitle),
                    ),
                  ),
                ),
                const DividerWidget(spacing: 0),
                Row(
                  children: [
                    SvgPicture.asset(icons.redmedia),
                    SizedBox(width: 10.w),
                    Text(
                      'IT-компанияси томонидан ишлаб чиқилди',
                      style: fonts.regular12.copyWith(color: colors.subtitle),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
