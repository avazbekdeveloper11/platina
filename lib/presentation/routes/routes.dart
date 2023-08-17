import 'package:flutter/material.dart';
import 'package:platina/presentation/pages/core/app_widget.dart';

class Routes {
  static const String bottomNavBar = '/Bottom_NavigationBar_page';
  static const String signUp = '/signUp';
  static const String signIn = '/signIn';

  static PageRoute<dynamic>? onGenerateRoute(
      {required BuildContext context,
      required RouteSettings settings,
      hasNetworkConnection}) {
    switch (settings.name) {
      case signUp:
    }
    return null;
  }

  static PageRoute getAppWidget() => MaterialPageRoute(
        builder: (_) => const AppWidget(),
      );
}
