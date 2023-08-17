// import 'package:platina/infrastructure/services/shared_pref_service.dart';
// import 'package:platina/presentation/component/no_internet_component.dart';
// import 'package:platina/presentation/pages/home/home_page.dart';
// import 'package:platina/presentation/styles/style.dart';
// import 'package:platina/presentation/styles/theme_warpper.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class BottomNavBar extends StatefulWidget {
//   final String token;

//   const BottomNavBar({Key? key, required this.token}) : super(key: key);

//   @override
//   State<BottomNavBar> createState() => _BottomNavBarState();
// }

// class _BottomNavBarState extends State<BottomNavBar> {
//   bool isOnline = true;
//   int selectedIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     final myLocale = context.locale.languageCode;
//     context.read<PreferenceService>().setLocale(myLocale);
//     debugPrint('locale language: $myLocale');
//     return ThemeWrapper(
//       builder: (context, colors, fonts, icons, controller) {
//         if (isOnline) {
//           return Scaffold(
//             resizeToAvoidBottomInset: true,
//             backgroundColor: colors.backgroundColor,
//             body: const HomePage(),
//             bottomNavigationBar: Stack(
//               clipBehavior: Clip.none,
//               children: [
//                 BottomNavigationBar(
//                   landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
//                   type: BottomNavigationBarType.fixed,
//                   unselectedLabelStyle: TextStyle(
//                     color: colors.icon,
//                   ),
//                   showUnselectedLabels: true,
//                   unselectedItemColor: colors.grey,
//                   items: <BottomNavigationBarItem>[
//                     BottomNavigationBarItem(
//                       icon:
//                           SvgPicture.asset(icons.appleLogo, color: colors.text),
//                       activeIcon: SvgPicture.asset(icons.appleLogo),
//                       label: "home".tr(),
//                     ),
//                     BottomNavigationBarItem(
//                       icon: SvgPicture.asset(
//                         icons.appleLogo,
//                         color: colors.text,
//                       ),
//                       activeIcon: SvgPicture.asset(icons.appleLogo),
//                       label: "catalog".tr(),
//                     ),
//                     // BottomNavigationBarItem(
//                     //   icon: SvgPicture.asset(icons.navBarAddCircle),
//                     //   label: "special_order".tr(),
//                     // ),
//                     BottomNavigationBarItem(
//                       icon: SvgPicture.asset(
//                         icons.appleLogo,
//                         color: colors.text,
//                       ),
//                       activeIcon: SvgPicture.asset(icons.appleLogo),
//                       label: "basket".tr(),
//                     ),
//                     BottomNavigationBarItem(
//                       icon: SvgPicture.asset(
//                         icons.appleLogo,
//                         color: colors.text,
//                       ),
//                       activeIcon: SvgPicture.asset(
//                         icons.appleLogo,
//                         color: Style.icon,
//                       ),
//                       label: "profile".tr(),
//                     ),
//                   ],
//                   currentIndex: selectedIndex,
//                   selectedItemColor: colors.text,
//                   onTap: (int index) {},
//                 ),
//               ],
//             ),
//           );
//         } else {
//           return const NoInernetComponent();
//         }
//       },
//     );
//   }
// }
