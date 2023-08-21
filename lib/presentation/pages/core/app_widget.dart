import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:platina/application/bottom_nav_bar_cubit/bottomnavbar_cubit.dart';
import 'package:platina/infrastructure/services/connectivity.dart';
import 'package:platina/infrastructure/services/shared_pref_service.dart';
import 'package:platina/presentation/pages/core/splash_screen.dart';
import 'package:platina/presentation/pages/nav_bar/nav_bar.dart';
import 'package:platina/presentation/styles/theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List>(
      future: Future.wait([
        PreferenceService.create,
        ConnectivityX().create(),
        GridTheme.create,
      ]),
      builder: (context, AsyncSnapshot<List<dynamic>> snap) {
        if (snap.hasData && snap.data is List<dynamic>) {
          final data = snap.data;
          final GridTheme theme = data?[2];
          return ChangeNotifierProvider(
            create: (_) => theme,
            builder: (BuildContext context, _) {
              return MaterialApp(
                builder: EasyLoading.init(),
                locale: context.locale,
                debugShowCheckedModeBanner: false,
                supportedLocales: context.supportedLocales,
                localizationsDelegates: context.localizationDelegates,
                home: BlocProvider(
                  create: (context) => BottomNavbarCubit(),
                  child: const BottomNavBar(),
                ),
              );
            },
          );
        } else {
          return const MediaQuery(
            data: MediaQueryData(),
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              home: SplashScreen(),
            ),
          );
        }
      },
    );
  }
}
