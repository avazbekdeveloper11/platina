import 'dart:async';
import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:platina/application/home_bloc/home_bloc.dart';
import 'package:platina/infrastructure/models/search_model/search_model.dart';
import 'package:platina/presentation/component/custom_text_field.dart';
import 'package:platina/presentation/styles/theme_warpper.dart';
import 'package:provider/provider.dart';

class SearchWidget extends StatefulWidget {
  final SearchModel? searchModel;
  final Function()? function;
  const SearchWidget({
    super.key,
    required this.searchModel,
    this.function,
  });

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  late TextEditingController searchController;
  Timer? _searchTimer;
  bool searchActive = false;
  late FocusNode focusNode;

  @override
  void initState() {
    focusNode = FocusNode();
    searchController = TextEditingController();
    _searchTimer = Timer(Duration.zero, () {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (context, colors, fonts, icons, controller) {
        return SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          child: Stack(
            children: [
              GestureDetector(
                onTap: () {
                  focusNode.unfocus();
                  widget.function!();
                },
                child: SizedBox(
                  height: 1.sh,
                  width: 1.sw,
                  child: Image.asset(
                    icons.homeScreen,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Positioned(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 16.h,
                          bottom: 8.h,
                          left: 16.w,
                          right: 16.w,
                        ),
                        child: CustomTextField(
                          focusNode: focusNode,
                          hintText: 'search_text'.tr(),
                          controller: searchController,
                          onChanged: (String value) {
                            searchActive = true;
                            if (value.isNotEmpty) {
                              _searchTimer!.cancel();
                              _searchTimer = Timer(
                                const Duration(seconds: 1),
                                () {
                                  context.read<HomeBloc>().add(
                                        HomeEvent.search(
                                          text: value,
                                        ),
                                      );
                                },
                              );
                            }
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 16.w,
                        ),
                        decoration: BoxDecoration(
                          color: colors.white,
                          borderRadius: BorderRadius.circular(
                            16.r,
                          ),
                        ),
                        child: (widget.searchModel?.results?.length ?? 0) != 0
                            ? ListView.builder(
                                padding: EdgeInsets.only(bottom: 24.h),
                                itemCount:
                                    (widget.searchModel?.results?.length ?? 0) >
                                            4
                                        ? 4
                                        : widget.searchModel?.results?.length,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  Results? model =
                                      widget.searchModel?.results?[index];
                                  return Padding(
                                    padding: EdgeInsets.only(
                                      top: 20.h,
                                      // bottom: 8.h,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            8.r,
                                          ),
                                          child: CachedNetworkImage(
                                            height: 36.w,
                                            width: 36.w,
                                            imageUrl:
                                                'https://platina.uz/_ipx/w_620/https://cp.platina.uz/${model?.getImageMediumUrl}',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        SizedBox(width: 8.w),
                                        SizedBox(
                                          width: 280.w,
                                          child: Text(
                                            model?.title ?? '',
                                            style: fonts.medium14,
                                            maxLines: 2,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              )
                            : searchActive
                                ? Container(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 8.h,
                                    ),
                                    margin: EdgeInsets.symmetric(
                                      horizontal: 16.w,
                                      vertical: 8.h,
                                    ),
                                    decoration: BoxDecoration(
                                      color: colors.white,
                                      borderRadius: BorderRadius.circular(4.r),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text("empty".tr()),
                                  )
                                : const SizedBox(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }
}
