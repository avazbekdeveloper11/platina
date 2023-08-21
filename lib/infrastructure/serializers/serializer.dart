import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:platina/infrastructure/models/categories_model/categories_model.dart';
import 'package:platina/infrastructure/models/popular_model/popular_model.dart';
import 'package:platina/infrastructure/models/search_model/search_model.dart';
import 'package:platina/infrastructure/models/weather_model/weather_model.dart';

part 'serializer.g.dart';

@SerializersFor([
  PopularModel,
  PopularModelResult,
  Category,
  WeatherModel,
  Location,
  Current,
  Forecast,
  Forecastday,
  Day,
  Condition,
  Astro,
  Hour,
  CategoriesModel,
  SearchModel,
  Results
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
