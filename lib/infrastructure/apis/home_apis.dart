import 'package:built_collection/built_collection.dart';
import 'package:chopper/chopper.dart';
import 'package:platina/infrastructure/models/categories_model/categories_model.dart';
import 'package:platina/infrastructure/models/popular_model/popular_model.dart';
import 'package:platina/infrastructure/models/search_model/search_model.dart';
import 'package:platina/infrastructure/models/weather_model/weather_model.dart';

import '../core/built_value_converter.dart';
import '../core/interceptors.dart';

part 'home_apis.chopper.dart';

String baseUrl = "http://cp.platina.uz/";

@ChopperApi(baseUrl: '')
abstract class HomeService extends ChopperService {
  @Get(path: '{app_lang}/api/popular-posts/')
  Future<Response<PopularModel>> getPopularPosts(
    @Header("X-Platina-Api-Key") String token,
    @Path('app_lang') appLang,
  );

  @Get(path: '{app_lang}/api/posts/author-offered/')
  Future<Response<PopularModel>> getAuthorOffered(
    @Header("X-Platina-Api-Key") String token,
    @Path('app_lang') appLang,
  );

  @Get(path: '{app_lang}/api/articles/')
  Future<Response<PopularModel>> getArticles(
    @Header("X-Platina-Api-Key") String token,
    @Path('app_lang') appLang,
  );

  @Get(path: '{app_lang}/api/posts/category/davlat-xaridlari')
  Future<Response<PopularModel>> getProcurment(
    @Header("X-Platina-Api-Key") String token,
    @Path('app_lang') appLang,
  );

  @Get(path: '{app_lang}/api/posts/business/')
  Future<Response<BuiltList<PopularModelResult>>> getBusiness(
    @Header("X-Platina-Api-Key") String token,
    @Path('app_lang') appLang,
  );

  @Get(path: '{app_lang}/api/categories/')
  Future<Response<BuiltList<CategoriesModel>>> getCategories(
    @Header("X-Platina-Api-Key") String token,
    @Path('app_lang') appLang,
  );

  @Get(path: '{app_lang}/api/search/')
  Future<Response<SearchModel>> searchNews(
    @Header("X-Platina-Api-Key") String token,
    @Path('app_lang') appLang,
    @Query("q") String? query,
  );
  static HomeService create() => _$HomeService(_Client(baseUrl, true));
}

@ChopperApi(baseUrl: '/api/')
abstract class WeatherService extends ChopperService {
  @Get(path: 'weather/forecast.json?q=Uzbekistan&days=3')
  Future<Response<WeatherModel>> getWather(
    @Header("key") String key,
  );

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
