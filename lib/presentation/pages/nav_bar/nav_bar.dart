import 'package:platina/application/bottom_nav_bar_cubit/bottomnavbar_cubit.dart';
import 'package:platina/presentation/pages/home/home_page.dart';
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
                children: const [HomePage(), Scaffold()],
              ),
              // ? Bottomnavigationbar
              bottomNavigationBar: BottomNavigationBar(
                onTap: (int index) {
                  context.read<BottomNavbarCubit>().changeIndex(index);
                },
                currentIndex: context.watch<BottomNavbarCubit>().currentIndex,
                selectedItemColor: colors.text,
                showUnselectedLabels: true,
                unselectedItemColor: colors.grey,
                type: BottomNavigationBarType.fixed,
                unselectedLabelStyle: TextStyle(color: colors.icon),
                landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: const Icon(Icons.category),
                    label: "home".tr(),
                  ),
                  BottomNavigationBarItem(
                    icon: const Icon(Icons.category),
                    label: "katalog".tr(),
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
