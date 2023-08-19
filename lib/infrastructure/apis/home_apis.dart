import 'package:chopper/chopper.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:platina/infrastructure/models/popular_model/popular_model.dart';
import 'package:platina/infrastructure/models/weather_model/weather_model.dart';

import '../core/built_value_converter.dart';
import '../core/interceptors.dart';

part 'home_apis.chopper.dart';

String baseUrl = "http://cp.platina.uz/${'app_lang'.tr()}/";

@ChopperApi(baseUrl: 'api/')
abstract class HomeService extends ChopperService {
  @Get(path: 'popular-posts/')
  Future<Response<PopularModel>> getPopularPosts(
    @Header("X-Platina-Api-Key") String token,
  );

  @Get(path: 'posts/author-offered/')
  Future<Response<PopularModel>> getAuthorOffered(
    @Header("X-Platina-Api-Key") String token,
  );

  @Get(path: 'articles/')
  Future<Response<PopularModel>> getArticles(
    @Header("X-Platina-Api-Key") String token,
  );

  @Get(path: 'weather/forecast.json?q=Uzbekistan&days=3')
  Future<Response<WeatherModel>> getWather(
    @Header("X-Platina-Api-Key") String token,
  );

  @Get(path: 'posts/category/davlat-xaridlari')
  Future<Response<PopularModel>> getProcurment(
    @Header("X-Platina-Api-Key") String token,
  );

  static HomeService create() => _$HomeService(_Client(baseUrl, true));
}

@ChopperApi(baseUrl: '/api/')
abstract class WeatherService extends ChopperService {
  @Get(path: 'weather/forecast.json?q=Uzbekistan&days=3#')
  Future<Response<WeatherModel>> getWather(
    @Header("X-Platina-Api-Key") String token,
  );

// https://platina.uz/api/weather/forecast.json?q=Uzbekistan&days=3#

  static WeatherService create() =>
      _$WeatherService(_Client('https://platina.uz', true));
}

// ! Client
class _Client extends ChopperClient {
  _Client(String baseUrl, bool useInterceptors)
      : super(
            baseUrl: Uri.parse(baseUrl),
            interceptors: useInterceptors
                ? [
                    CoreInterceptor(),
                    HttpLoggingInterceptor(),
                    CurlInterceptor(),
                    NetworkInterceptor(),
                    BackendInterceptor(),
                  ]
                : const [],
            converter: BuiltValueConverter(),
            errorConverter: ErrorMyConverter());
}
