// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_apis.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$HomeService extends HomeService {
  _$HomeService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = HomeService;

  @override
  Future<Response<PopularModel>> getPopularPosts(
    String token,
    dynamic appLang,
  ) {
    final Uri $url = Uri.parse('${appLang}/api/popular-posts/');
    final Map<String, String> $headers = {
      'X-Platina-Api-Key': token,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<PopularModel, PopularModel>($request);
  }

  @override
  Future<Response<PopularModel>> getAuthorOffered(
    String token,
    dynamic appLang,
  ) {
    final Uri $url = Uri.parse('${appLang}/api/posts/author-offered/');
    final Map<String, String> $headers = {
      'X-Platina-Api-Key': token,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<PopularModel, PopularModel>($request);
  }

  @override
  Future<Response<PopularModel>> getArticles(
    String token,
    dynamic appLang,
  ) {
    final Uri $url = Uri.parse('${appLang}/api/articles/');
    final Map<String, String> $headers = {
      'X-Platina-Api-Key': token,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<PopularModel, PopularModel>($request);
  }

  @override
  Future<Response<PopularModel>> getProcurment(
    String token,
    dynamic appLang,
  ) {
    final Uri $url =
        Uri.parse('${appLang}/api/posts/category/davlat-xaridlari');
    final Map<String, String> $headers = {
      'X-Platina-Api-Key': token,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<PopularModel, PopularModel>($request);
  }

  @override
  Future<Response<BuiltList<PopularModelResult>>> getBusiness(
    String token,
    dynamic appLang,
  ) {
    final Uri $url = Uri.parse('${appLang}/api/posts/business/');
    final Map<String, String> $headers = {
      'X-Platina-Api-Key': token,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client
        .send<BuiltList<PopularModelResult>, PopularModelResult>($request);
  }

  @override
  Future<Response<BuiltList<CategoriesModel>>> getCategories(
    String token,
    dynamic appLang,
  ) {
    final Uri $url = Uri.parse('${appLang}/api/categories/');
    final Map<String, String> $headers = {
      'X-Platina-Api-Key': token,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<BuiltList<CategoriesModel>, CategoriesModel>($request);
  }

  @override
  Future<Response<SearchModel>> searchNews(
    String token,
    dynamic appLang,
    String? query,
  ) {
    final Uri $url = Uri.parse('${appLang}/api/search/');
    final Map<String, dynamic> $params = <String, dynamic>{'q': query};
    final Map<String, String> $headers = {
      'X-Platina-Api-Key': token,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<SearchModel, SearchModel>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$WeatherService extends WeatherService {
  _$WeatherService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = WeatherService;

  @override
  Future<Response<WeatherModel>> getWather(String key) {
    final Uri $url =
        Uri.parse('/api/weather/forecast.json?q=Uzbekistan&days=3');
    final Map<String, String> $headers = {
      'key': key,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<WeatherModel, WeatherModel>($request);
  }
}
