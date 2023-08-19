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
  Future<Response<PopularModel>> getPopularPosts(String token) {
    final Uri $url = Uri.parse('api/popular-posts/');
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
  Future<Response<PopularModel>> getAuthorOffered(String token) {
    final Uri $url = Uri.parse('api/posts/author-offered/');
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
  Future<Response<PopularModel>> getArticles(String token) {
    final Uri $url = Uri.parse('api/articles/');
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
  Future<Response<WeatherModel>> getWather(String token) {
    final Uri $url = Uri.parse('api/weather/forecast.json?q=Uzbekistan&days=3');
    final Map<String, String> $headers = {
      'X-Platina-Api-Key': token,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<WeatherModel, WeatherModel>($request);
  }

  @override
  Future<Response<PopularModel>> getProcurment(String token) {
    final Uri $url = Uri.parse('api/posts/category/davlat-xaridlari');
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
  Future<Response<WeatherModel>> getWather(String token) {
    final Uri $url =
        Uri.parse('/api/weather/forecast.json?q=Uzbekistan&days=3#');
    final Map<String, String> $headers = {
      'X-Platina-Api-Key': token,
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
