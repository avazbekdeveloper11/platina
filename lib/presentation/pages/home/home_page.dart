import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:platina/application/home_bloc/home_bloc.dart';
import 'package:platina/presentation/component/app_bar_component.dart';
import 'package:platina/presentation/component/icon_button_component.dart';
import 'package:platina/presentation/component/un_focus_widget.dart';
import 'package:platina/presentation/pages/home/widget/bottom_menu.dart';
import 'package:platina/presentation/pages/home/widget/business_builder.dart';
import 'package:platina/presentation/pages/home/widget/cart_tile_builder.dart';
import 'package:platina/presentation/pages/home/widget/currency_and_wather_title.dart';
import 'package:platina/presentation/pages/home/widget/drawer_widget.dart';
import 'package:platina/presentation/pages/home/widget/home_shimmer_view.dart';
import 'package:platina/presentation/pages/home/widget/horizontal_scrool_big_cart.dart';
import 'package:platina/presentation/pages/home/widget/important_news.dart';
import 'package:platina/presentation/pages/home/widget/public_procurment.dart';
import 'package:platina/presentation/pages/home/widget/search_widget.dart';
import 'package:platina/presentation/styles/theme_warpper.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late GlobalKey<ScaffoldState> scaffoldKey;
  int currentIndex = 0;

  @override
  void initState() {
    scaffoldKey = GlobalKey<ScaffoldState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return OnUnFocusTap(
      child: ThemeWrapper(
        builder: (context, colors, fonts, icons, controller) {
          return BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state.categoriesModel != null &&
                  state.popularModel != null &&
                  state.businessModel.isNotEmpty &&
                  state.procurmentModel != null &&
                  state.articlesModel != null &&
                  state.authorOfferedModel != null) {
                return Scaffold(
                  backgroundColor: colors.backgroundColor,
                  // ? AppBar
                  appBar: AppBarComponent(
                    appBar: AppBar(),
                    leading: IconButtonComponent(
                      icon: Icon(Icons.dehaze, color: colors.primary),
                      onPressed: () {
                        if (currentIndex == 1) {
                          setState(() {
                            currentIndex = 0;
                          });
                        }
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
                        onPressed: () {
                          if (scaffoldKey.currentState!.isDrawerOpen) {
                            scaffoldKey.currentState!.closeDrawer();
                          }
                          setState(() {
                            currentIndex = currentIndex == 1 ? 0 : 1;
                          });
                        },
                      ),
                    ],
                  ),

                  // ? body
                  body: IndexedStack(
                    index: currentIndex,
                    children: [
                      Scaffold(
                        backgroundColor: colors.backgroundColor,
                        key: scaffoldKey,
                        // ? Drawer
                        drawer: DrawerWiidget(
                          scaffoldKey: scaffoldKey,
                          categoriesModel: state.categoriesModel ?? [],
                        ),
                        body: SingleChildScrollView(
                          child: Column(
                            children: [
                              CurrencyAndWatherTitle(
                                weatherModel: state.weatherModel,
                              ),
                              ImportantNews(
                                popularModel: state.popularModelPinned!,
                              ),
                              SizedBox(height: 20.h),
                              HorizontalScroolBigCart(
                                authorOfferedModel: state.authorOfferedModel!,
                              ),
                              SizedBox(height: 20.h),
                              CartTitleBuilder(
                                articlesModel: state.articlesModel!,
                              ),
                              SizedBox(height: 20.h),
                              PublicProcurement(
                                popularModel: state.procurmentModel!,
                              ),
                              SizedBox(height: 36.h),
                              BusinessBuilder(
                                bussinessModel: state.businessModel,
                              ),
                              SizedBox(height: 36.h),
                              const BottomMenu()
                            ],
                          ),
                        ),
                      ),
                      SearchWidget(
                        function: () {
                          setState(() {
                            currentIndex = currentIndex == 1 ? 0 : 1;
                          });
                        },
                        searchModel: state.searchModel,
                      ),
                    ],
                  ),
                );
              } else {
                return const HomeShimmerView();
              }
            },
          );
        },
      ),
    );
  }
}
