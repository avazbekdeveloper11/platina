import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:platina/presentation/styles/theme_warpper.dart';

class AppBarComponent extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;
  final Widget? title;
  final Widget? leading;
  final List<Widget>? actions;

  const AppBarComponent({
    Key? key,
    this.leading,
    this.actions,
    this.title,
    required this.appBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (context, colors, fonts, icons, controller) {
        return AppBar(
          elevation: 1,
          actions: actions,
          leading: leading,
          centerTitle: true,
          shadowColor: colors.primary,
          backgroundColor: colors.white,
          title: title ?? SvgPicture.asset(icons.appLogo),
        );
      },
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
