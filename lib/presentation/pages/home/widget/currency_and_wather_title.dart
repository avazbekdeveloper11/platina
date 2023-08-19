import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:platina/infrastructure/models/weather_model/weather_model.dart';
import 'package:platina/presentation/styles/theme_warpper.dart';

class CurrencyAndWatherTitle extends StatelessWidget {
  final WeatherModel weatherModel;
  const CurrencyAndWatherTitle({
    super.key,
    required this.weatherModel,
  });

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (context, colors, fonts, icons, controller) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
          child: Row(
            children: [
              SvgPicture.asset(icons.usd),
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(text: ' '),
                    TextSpan(text: 'USD ', style: fonts.medium16),
                    const TextSpan(text: ' '),
                    TextSpan(
                      text: '11318.74',
                      style: fonts.medium16.copyWith(color: colors.downRed),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              weatherModel.current?.condition?.icon != null
                  ? Image.network(
                      'https:${weatherModel.current!.condition!.icon}',
                      height: 24.sp,
                      width: 24.sp,
                      fit: BoxFit.none,
                    )
                  : const SizedBox(),
              Text(
                "${(weatherModel.current?.tempC?.isNegative ?? false) ? '' : '+'} ${weatherModel.current?.tempC!.ceil().toString() ?? ''} °C",
                style: fonts.medium16,
              ),
            ],
          ),
        );
      },
    );
  }
}
