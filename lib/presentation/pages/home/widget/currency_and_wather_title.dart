import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:platina/infrastructure/core/constant.dart';
import 'package:platina/infrastructure/models/weather_model/weather_model.dart';
import 'package:platina/presentation/styles/theme.dart';
import 'package:platina/presentation/styles/theme_warpper.dart';

class CurrencyAndWatherTitle extends StatefulWidget {
  final WeatherModel? weatherModel;
  const CurrencyAndWatherTitle({
    super.key,
    required this.weatherModel,
  });

  @override
  State<CurrencyAndWatherTitle> createState() => _CurrencyAndWatherTitleState();
}

class _CurrencyAndWatherTitleState extends State<CurrencyAndWatherTitle> {
  int currency = 0;
  double currencyHeight = 0;
  double weatherHeight = 0;

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (context, colors, fonts, icons, controller) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: SizedBox(
                height: 48.h,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        weatherHeight = 0;
                        if (currencyHeight == 60) {
                          currencyHeight = 0;
                        } else {
                          currencyHeight = 60;
                        }
                        setState(() {});
                      },
                      child: Container(
                        height: 40.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.h,
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 10.r,
                              backgroundImage: AssetImage(
                                Constant.currentcyList[currency]['img'],
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  const TextSpan(text: ' '),
                                  TextSpan(
                                      text: Constant.currentcyList[currency]
                                              ['name'] +
                                          ' ',
                                      style: fonts.medium16),
                                  const TextSpan(text: ' '),
                                  TextSpan(
                                    text: Constant.currentcyList[currency]
                                            ['price'] +
                                        ' ',
                                    style: fonts.medium16
                                        .copyWith(color: colors.downRed),
                                  ),
                                ],
                              ),
                            ),
                            SvgPicture.asset(
                              Constant.currentcyList[currency]['icon'],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        currencyHeight = 0;
                        if (weatherHeight == 140) {
                          weatherHeight = 0;
                        } else {
                          currencyHeight = 0;
                          weatherHeight = 140;
                        }
                        setState(() {});
                      },
                      child: Container(
                        height: 40.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.h,
                        ),
                        child: Row(
                          children: [
                            widget.weatherModel?.current?.condition?.icon !=
                                    null
                                ? Image.network(
                                    'https:${widget.weatherModel!.current!.condition!.icon}',
                                  )
                                : const SizedBox(),
                            Text(
                              "${(widget.weatherModel?.current?.tempC?.isNegative ?? false) || widget.weatherModel?.current?.tempC == null ? '' : ' +'} ${widget.weatherModel?.current?.tempC!.ceil().toString() ?? ''} ${widget.weatherModel?.current?.tempC == null ? '' : "°C"}",
                              style: fonts.medium16,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            // ? Currency Tile

            currencyAnimatedTile(colors, fonts),
            weatherAnimatedTile(colors, fonts)
          ],
        );
      },
    );
  }

  AnimatedContainer weatherAnimatedTile(CustomColorSet colors, FontSet fonts) {
    return AnimatedContainer(
      width: 228.w,
      height: weatherHeight.h,
      alignment: Alignment.center,
      duration: const Duration(milliseconds: 500),
      margin: EdgeInsets.only(
        bottom: weatherHeight > 20 ? 12.h : 0,
      ),
      decoration: BoxDecoration(
        color: colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: List<Widget>.generate(
            widget.weatherModel?.forecast?.forecastday?.length ?? 0,
            (index) => Padding(
              padding: EdgeInsets.only(
                left: index == 0 ? 0 : 8.w,
                right: index == 2 ? 14.w : 0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    widget.weatherModel?.forecast?.forecastday?[index].date
                            ?.substring(8) ??
                        '',
                    style: fonts.medium16.copyWith(color: colors.subtitle),
                  ),
                  Text(
                    monthDetector(
                      widget.weatherModel?.forecast?.forecastday?[index].date
                              .toString() ??
                          '',
                    ),
                    style: fonts.medium16,
                  ),
                  SizedBox(height: 4.h),
                  widget.weatherModel?.current?.condition?.icon != null
                      ? Image.network(
                          'https:${widget.weatherModel!.forecast!.forecastday?[index].day?.condition?.icon}',
                          height: 42.sp,
                          width: 42.sp,
                          fit: BoxFit.cover,
                        )
                      : const SizedBox(),
                  SizedBox(height: 4.h),
                  Text(
                    "${widget.weatherModel?.forecast?.forecastday?[index].day?.mintempC != null ? '${widget.weatherModel!.forecast!.forecastday![index].day!.mintempC!.ceil()}°' : ''}  ${widget.weatherModel?.forecast?.forecastday?[index].day?.maxtempC != null ? '${widget.weatherModel!.forecast!.forecastday![index].day!.maxtempC?.ceil()}°' : ''}",
                    style: fonts.medium16,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  AnimatedContainer currencyAnimatedTile(CustomColorSet colors, FontSet fonts) {
    return AnimatedContainer(
      height: currencyHeight.h,
      width: 1.sw,
      color: colors.white,
      margin: EdgeInsets.only(
        bottom: currencyHeight > 20 ? 12.h : 0,
      ),
      padding: EdgeInsets.only(
        left: 16.h,
        right: 16.w,
        top: 20.h,
      ),
      duration: const Duration(milliseconds: 500),
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: List<Widget>.generate(
            Constant.currentcyList.length,
            (index) => index != currency
                ? InkWell(
                    onTap: () {
                      setState(() {
                        currencyHeight = 0;
                        currency = index;
                      });
                    },
                    child: SizedBox(
                      width: 168.w,
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 10.r,
                            backgroundImage: AssetImage(
                              Constant.currentcyList[index]['img'],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                const TextSpan(text: ' '),
                                TextSpan(
                                    text: Constant.currentcyList[index]
                                            ['name'] +
                                        ' ',
                                    style: fonts.medium16),
                                const TextSpan(text: ' '),
                                TextSpan(
                                  text: Constant.currentcyList[index]['price'] +
                                      ' ',
                                  style: fonts.medium16
                                      .copyWith(color: colors.downRed),
                                ),
                              ],
                            ),
                          ),
                          SvgPicture.asset(
                            Constant.currentcyList[index]['icon'],
                          ),
                        ],
                      ),
                    ),
                  )
                : const SizedBox(),
          ),
        ),
      ),
    );
  }

  String monthDetector(String date) {
    if (date.isEmpty) return '';
    switch (DateTime.parse(date).month) {
      case 01:
        return 'january'.tr();
      case 02:
        return 'february'.tr();
      case 03:
        return 'march'.tr();
      case 04:
        return 'april'.tr();
      case 05:
        return 'may'.tr();
      case 06:
        return 'june'.tr();
      case 07:
        return 'july'.tr();
      case 08:
        return 'august'.tr();
      case 09:
        return 'september'.tr();
      case 10:
        return 'october'.tr();
      case 11:
        return 'november'.tr();
      case 12:
        return 'december'.tr();
      default:
        return '';
    }
  }
}
