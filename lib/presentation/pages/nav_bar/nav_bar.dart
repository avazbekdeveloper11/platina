import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:platina/application/bottom_nav_bar_cubit/bottomnavbar_cubit.dart';
import 'package:platina/application/home_bloc/home_bloc.dart';
import 'package:platina/infrastructure/apis/home_apis.dart';
import 'package:platina/infrastructure/repositories/home_repo.dart';
import 'package:platina/presentation/pages/home/home_page.dart';
import 'package:platina/presentation/pages/page_not_found/page_not_found.dart';
import 'package:platina/presentation/styles/theme_warpper.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavBar extends StatefulWidget {
  final String token;

  const BottomNavBar({Key? key, required this.token}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (context, colors, fonts, icons, controller) {
        return BlocBuilder<BottomNavbarCubit, BottomNavbarState>(
          builder: (context, state) {
            return Scaffold(
              resizeToAvoidBottomInset: true,
              backgroundColor: colors.backgroundColor,
              // ? Body
              body: IndexedStack(
                index: context.watch<BottomNavbarCubit>().currentIndex,
                children: [
                  BlocProvider(
                    create: (context) => HomeBloc(HomeRepo(
                      HomeService.create(),
                      WeatherService.create(),
                    ))
                      ..add(HomeEvent.getPopularPosts())
                      ..add(HomeEvent.getWather()),
                    child: const HomePage(),
                  ),
                  const PageNotFound(),
                  const PageNotFound(),
                  const PageNotFound(),
                  const PageNotFound(),
                ],
              ),
              // ? Bottomnavigationbar
              bottomNavigationBar: BottomNavigationBar(
                onTap: (int index) {
                  context.read<BottomNavbarCubit>().changeIndex(index);
                },
                currentIndex: context.watch<BottomNavbarCubit>().currentIndex,
                selectedFontSize: 12.sp,
                unselectedFontSize: 12.sp,
                showUnselectedLabels: true,
                selectedItemColor: colors.text,
                unselectedItemColor: colors.grey,
                selectedLabelStyle: fonts.medium14.copyWith(fontSize: 12.sp),
                unselectedLabelStyle: fonts.medium14.copyWith(fontSize: 12.sp),
                type: BottomNavigationBarType.fixed,
                landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(icons.home),
                    activeIcon: SvgPicture.asset(icons.homeSelected),
                    label: 'home'.tr(),
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(icons.tape),
                    activeIcon: SvgPicture.asset(icons.tapeSelected),
                    label: 'tape'.tr(),
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(icons.popular),
                    activeIcon: SvgPicture.asset(icons.popularSelected),
                    label: 'popular'.tr(),
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(icons.article),
                    activeIcon: SvgPicture.asset(icons.articleSelected),
                    label: 'article'.tr(),
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(icons.video),
                    activeIcon: SvgPicture.asset(icons.videoSelected),
                    label: 'video'.tr(),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
