import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:platina/domain/home/failures_home.dart';
import 'package:platina/domain/home/home_facade.dart';
import 'package:platina/infrastructure/apis/home_apis.dart';
import 'package:platina/infrastructure/core/exceptions.dart';
import 'package:platina/infrastructure/models/categories_model/categories_model.dart';
import 'package:platina/infrastructure/models/popular_model/popular_model.dart';
import 'package:platina/infrastructure/models/search_model/search_model.dart';
import 'package:platina/infrastructure/models/weather_model/weather_model.dart';

class HomeRepo implements HomeFacade {
  final HomeService _homeService;
  final WeatherService _weatherService;

  HomeRepo(this._homeService, this._weatherService);

  @override
  Future<Either<CoreFailure, PopularModel>> getPopularPosts() async {
    try {
      final res = await _homeService.getPopularPosts(
        'UkoMHcu8.vQMRRWaJwK2aTet0HsgMRazYCk5lhlgn',
        "app_lang".tr(),
      );
      if (res.isSuccessful) {
        assert(res.body != null);
        return right(res.body!);
      } else {
        return left(Unknown(message: "unknown_error".tr()));
      }
    } catch (e) {
      debugPrint("Error $e");
      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      } else if (e is UnimplementedError) {
        return left(Unknown(message: e.message ?? 'unknown_error'.tr()));
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }

  @override
  Future<Either<CoreFailure, PopularModel>> getAuthorOffered() async {
    try {
      final res = await _homeService.getAuthorOffered(
        'UkoMHcu8.vQMRRWaJwK2aTet0HsgMRazYCk5lhlgn',
        "app_lang".tr(),
      );
      if (res.isSuccessful) {
        assert(res.body != null);
        return right(res.body!);
      } else {
        return left(Unknown(message: "unknown_error".tr()));
      }
    } catch (e) {
      debugPrint("Error $e");
      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      } else if (e is UnimplementedError) {
        return left(Unknown(message: e.message ?? 'unknown_error'.tr()));
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }

  @override
  Future<Either<CoreFailure, PopularModel>> getArticles() async {
    try {
      final res = await _homeService.getArticles(
        'UkoMHcu8.vQMRRWaJwK2aTet0HsgMRazYCk5lhlgn',
        "app_lang".tr(),
      );
      if (res.isSuccessful) {
        assert(res.body != null);
        return right(res.body!);
      } else {
        return left(Unknown(message: "unknown_error".tr()));
      }
    } catch (e) {
      debugPrint("Error $e");
      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      } else if (e is UnimplementedError) {
        return left(Unknown(message: e.message ?? 'unknown_error'.tr()));
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }

  @override
  Future<Either<CoreFailure, WeatherModel>> getWather() async {
    try {
      final res = await _weatherService.getWather(
        '38c2236ba8eb43ad805115137231807',
      );
      if (res.isSuccessful) {
        assert(res.body != null);
        return right(res.body!);
      } else {
        return left(Unknown(message: "unknown_error".tr()));
      }
    } catch (e) {
      debugPrint("Error $e");
      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      } else if (e is UnimplementedError) {
        return left(Unknown(message: e.message ?? 'unknown_error'.tr()));
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }

  @override
  Future<Either<CoreFailure, PopularModel>> getProcurment() async {
    try {
      final res = await _homeService.getProcurment(
        'UkoMHcu8.vQMRRWaJwK2aTet0HsgMRazYCk5lhlgn',
        "app_lang".tr(),
      );
      if (res.isSuccessful) {
        assert(res.body != null);
        return right(res.body!);
      } else {
        return left(Unknown(message: "unknown_error".tr()));
      }
    } catch (e) {
      debugPrint("Error $e");
      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      } else if (e is UnimplementedError) {
        return left(Unknown(message: e.message ?? 'unknown_error'.tr()));
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }

  @override
  Future<Either<CoreFailure, List<PopularModelResult>>> getBusiness() async {
    try {
      final res = await _homeService.getBusiness(
        'UkoMHcu8.vQMRRWaJwK2aTet0HsgMRazYCk5lhlgn',
        "app_lang".tr(),
      );
      if (res.isSuccessful) {
        assert(res.body != null);
        return right(res.body!.toList());
      } else {
        return left(Unknown(message: "unknown_error".tr()));
      }
    } catch (e) {
      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      } else if (e is UnimplementedError) {
        return left(Unknown(message: e.message ?? 'unknown_error'.tr()));
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }

  @override
  Future<Either<CoreFailure, List<CategoriesModel>>> getCategories() async {
    try {
      final res = await _homeService.getCategories(
        'UkoMHcu8.vQMRRWaJwK2aTet0HsgMRazYCk5lhlgn',
        "app_lang".tr(),
      );
      if (res.isSuccessful) {
        assert(res.body != null);
        return right(res.body!.toList());
      } else {
        return left(Unknown(message: "unknown_error".tr()));
      }
    } catch (e) {
      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      } else if (e is UnimplementedError) {
        return left(Unknown(message: e.message ?? 'unknown_error'.tr()));
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }

  @override
  Future<Either<CoreFailure, SearchModel>> searchNews(String text) async {
    try {
      final res = await _homeService.searchNews(
        'UkoMHcu8.vQMRRWaJwK2aTet0HsgMRazYCk5lhlgn',
        "app_lang".tr(),
        'query=$text',
      );
      if (res.isSuccessful) {
        assert(res.body != null);
        return right(res.body!);
      } else {
        return left(Unknown(message: "unknown_error".tr()));
      }
    } catch (e) {
      debugPrint("Error $e");
      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      } else if (e is UnimplementedError) {
        return left(Unknown(message: e.message ?? 'unknown_error'.tr()));
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }
}
