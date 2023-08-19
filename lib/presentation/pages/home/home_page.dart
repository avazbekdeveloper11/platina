import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:platina/presentation/component/app_bar_component.dart';
import 'package:platina/presentation/component/icon_button_component.dart';
import 'package:platina/presentation/pages/home/widget/bottom_menu.dart';
import 'package:platina/presentation/pages/home/widget/business_builder.dart';
import 'package:platina/presentation/pages/home/widget/cart_tile_builder.dart';
import 'package:platina/presentation/pages/home/widget/currency_and_wather_title.dart';
import 'package:platina/presentation/pages/home/widget/divider_widget.dart';
import 'package:platina/presentation/pages/home/widget/horizontal_scrool_big_cart.dart';
import 'package:platina/presentation/pages/home/widget/important_news.dart';
import 'package:platina/presentation/pages/home/widget/public_procurment.dart';
import 'package:platina/presentation/styles/theme_warpper.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late GlobalKey<ScaffoldState> scaffoldKey;

  @override
  void initState() {
    scaffoldKey = GlobalKey<ScaffoldState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (context, colors, fonts, icons, controller) {
        return Scaffold(
          backgroundColor: colors.backgroundColor,
          // ? AppBar
          appBar: AppBarComponent(
            appBar: AppBar(),
            leading: IconButtonComponent(
              icon: Icon(Icons.dehaze, color: colors.primary),
              onPressed: () {
                if (scaffoldKey.currentState!.isDrawerOpen) {
                  scaffoldKey.currentState!.closeDrawer();
                } else {
                  scaffoldKey.currentState!.openDrawer();
                }
              },
            ),
            actions: [
              IconButtonComponent(
                icon: Icon(Icons.search, color: colors.primary),
              ),
            ],
          ),

          // ? body
          body: Scaffold(
            key: scaffoldKey,
            // ? Drawer
            drawer: Container(
              width: 258.w,
              color: colors.white,
            ),

            body: SingleChildScrollView(
              child: Column(
                children: [
                  const CurrencyAndWatherTitle(),
                  const ImportantNews(),
                  SizedBox(height: 20.h),
                  const HorizontalScroolBigCart(),
                  SizedBox(height: 20.h),
                  const CartTitleBuilder(),
                  SizedBox(height: 20.h),
                  const PublicProcurement(),
                  SizedBox(height: 36.h),
                  const BusinessBuilder(),
                  SizedBox(height: 36.h),
                  const BottomMenu()
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
