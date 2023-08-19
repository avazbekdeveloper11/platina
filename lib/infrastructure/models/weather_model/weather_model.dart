library weather_model;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:platina/infrastructure/serializers/serializer.dart';

part 'weather_model.g.dart';

abstract class WeatherModel
    implements Built<WeatherModel, WeatherModelBuilder> {
  WeatherModel._();

  factory WeatherModel([Function(WeatherModelBuilder b) updates]) =
      _$WeatherModel;

  @BuiltValueField(wireName: 'location')
  Location? get location;
  @BuiltValueField(wireName: 'current')
  Current? get current;
  @BuiltValueField(wireName: 'forecast')
  Forecast? get forecast;
  String toJson() {
    return json
        .encode(serializers.serializeWith(WeatherModel.serializer, this));
  }

  static WeatherModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        WeatherModel.serializer, json.decode(jsonString));
  }

  static Serializer<WeatherModel> get serializer => _$weatherModelSerializer;
}

abstract class Location implements Built<Location, LocationBuilder> {
  Location._();

  factory Location([Function(LocationBuilder b) updates]) = _$Location;

  @BuiltValueField(wireName: 'name')
  String? get name;
  @BuiltValueField(wireName: 'region')
  String? get region;
  @BuiltValueField(wireName: 'country')
  String? get country;
  @BuiltValueField(wireName: 'lat')
  double? get lat;
  @BuiltValueField(wireName: 'lon')
  double? get lon;
  @BuiltValueField(wireName: 'tz_id')
  String? get tzId;
  @BuiltValueField(wireName: 'localtime_epoch')
  int? get localtimeEpoch;
  @BuiltValueField(wireName: 'localtime')
  String? get localtime;
  String toJson() {
    return json.encode(serializers.serializeWith(Location.serializer, this));
  }

  static Location? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Location.serializer, json.decode(jsonString));
  }

  static Serializer<Location> get serializer => _$locationSerializer;
}

abstract class Current implements Built<Current, CurrentBuilder> {
  Current._();

  factory Current([Function(CurrentBuilder b) updates]) = _$Current;

  @BuiltValueField(wireName: 'last_updated_epoch')
  int? get lastUpdatedEpoch;
  @BuiltValueField(wireName: 'last_updated')
  String? get lastUpdated;
  @BuiltValueField(wireName: 'temp_c')
  double? get tempC;
  @BuiltValueField(wireName: 'temp_f')
  double? get tempF;
  @BuiltValueField(wireName: 'is_day')
  int? get isDay;
  @BuiltValueField(wireName: 'condition')
  Condition? get condition;
  @BuiltValueField(wireName: 'wind_mph')
  double? get windMph;
  @BuiltValueField(wireName: 'wind_kph')
  double? get windKph;
  @BuiltValueField(wireName: 'wind_degree')
  int? get windDegree;
  @BuiltValueField(wireName: 'wind_dir')
  String? get windDir;
  @BuiltValueField(wireName: 'pressure_mb')
  int? get pressureMb;
  @BuiltValueField(wireName: 'pressure_in')
  double? get pressureIn;
  @BuiltValueField(wireName: 'precip_mm')
  int? get precipMm;
  @BuiltValueField(wireName: 'precip_in')
  int? get precipIn;
  @BuiltValueField(wireName: 'humidity')
  int? get humidity;
  @BuiltValueField(wireName: 'cloud')
  int? get cloud;
  @BuiltValueField(wireName: 'feelslike_c')
  double? get feelslikeC;
  @BuiltValueField(wireName: 'feelslike_f')
  double? get feelslikeF;
  @BuiltValueField(wireName: 'vis_km')
  int? get visKm;
  @BuiltValueField(wireName: 'vis_miles')
  int? get visMiles;
  @BuiltValueField(wireName: 'uv')
  int? get uv;
  @BuiltValueField(wireName: 'gust_mph')
  double? get gustMph;
  @BuiltValueField(wireName: 'gust_kph')
  double? get gustKph;
  String toJson() {
    return json.encode(serializers.serializeWith(Current.serializer, this));
  }

  static Current? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Current.serializer, json.decode(jsonString));
  }

  static Serializer<Current> get serializer => _$currentSerializer;
}

abstract class Forecast implements Built<Forecast, ForecastBuilder> {
  Forecast._();

  factory Forecast([Function(ForecastBuilder b) updates]) = _$Forecast;

  @BuiltValueField(wireName: 'forecastday')
  BuiltList<Forecastday>? get forecastday;
  String toJson() {
    return json.encode(serializers.serializeWith(Forecast.serializer, this));
  }

  static Forecast? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Forecast.serializer, json.decode(jsonString));
  }

  static Serializer<Forecast> get serializer => _$forecastSerializer;
}

abstract class Forecastday implements Built<Forecastday, ForecastdayBuilder> {
  Forecastday._();

  factory Forecastday([Function(ForecastdayBuilder b) updates]) = _$Forecastday;

  @BuiltValueField(wireName: 'date')
  String? get date;
  @BuiltValueField(wireName: 'date_epoch')
  int? get dateEpoch;
  @BuiltValueField(wireName: 'day')
  Day? get day;
  @BuiltValueField(wireName: 'astro')
  Astro? get astro;
  @BuiltValueField(wireName: 'hour')
  BuiltList<Hour>? get hour;
  String toJson() {
    return json.encode(serializers.serializeWith(Forecastday.serializer, this));
  }

  static Forecastday? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Forecastday.serializer, json.decode(jsonString));
  }

  static Serializer<Forecastday> get serializer => _$forecastdaySerializer;
}

abstract class Day implements Built<Day, DayBuilder> {
  Day._();

  factory Day([Function(DayBuilder b) updates]) = _$Day;

  @BuiltValueField(wireName: 'maxtemp_c')
  double? get maxtempC;
  @BuiltValueField(wireName: 'maxtemp_f')
  double? get maxtempF;
  @BuiltValueField(wireName: 'mintemp_c')
  double? get mintempC;
  @BuiltValueField(wireName: 'mintemp_f')
  double? get mintempF;
  @BuiltValueField(wireName: 'avgtemp_c')
  double? get avgtempC;
  @BuiltValueField(wireName: 'avgtemp_f')
  double? get avgtempF;
  @BuiltValueField(wireName: 'maxwind_mph')
  double? get maxwindMph;
  @BuiltValueField(wireName: 'maxwind_kph')
  double? get maxwindKph;
  @BuiltValueField(wireName: 'totalprecip_mm')
  int? get totalprecipMm;
  @BuiltValueField(wireName: 'totalprecip_in')
  int? get totalprecipIn;
  @BuiltValueField(wireName: 'totalsnow_cm')
  int? get totalsnowCm;
  @BuiltValueField(wireName: 'avgvis_km')
  int? get avgvisKm;
  @BuiltValueField(wireName: 'avgvis_miles')
  int? get avgvisMiles;
  @BuiltValueField(wireName: 'avghumidity')
  int? get avghumidity;
  @BuiltValueField(wireName: 'daily_will_it_rain')
  int? get dailyWillItRain;
  @BuiltValueField(wireName: 'daily_chance_of_rain')
  int? get dailyChanceOfRain;
  @BuiltValueField(wireName: 'daily_will_it_snow')
  int? get dailyWillItSnow;
  @BuiltValueField(wireName: 'daily_chance_of_snow')
  int? get dailyChanceOfSnow;
  @BuiltValueField(wireName: 'condition')
  Condition? get condition;
  @BuiltValueField(wireName: 'uv')
  int? get uv;
  String toJson() {
    return json.encode(serializers.serializeWith(Day.serializer, this));
  }

  static Day? fromJson(String jsonString) {
    return serializers.deserializeWith(Day.serializer, json.decode(jsonString));
  }

  static Serializer<Day> get serializer => _$daySerializer;
}

abstract class Condition implements Built<Condition, ConditionBuilder> {
  Condition._();

  factory Condition([Function(ConditionBuilder b) updates]) = _$Condition;

  @BuiltValueField(wireName: 'text')
  String? get text;
  @BuiltValueField(wireName: 'icon')
  String? get icon;
  @BuiltValueField(wireName: 'code')
  int? get code;
  String toJson() {
    return json.encode(serializers.serializeWith(Condition.serializer, this));
  }

  static Condition? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Condition.serializer, json.decode(jsonString));
  }

  static Serializer<Condition> get serializer => _$conditionSerializer;
}

abstract class Astro implements Built<Astro, AstroBuilder> {
  Astro._();

  factory Astro([Function(AstroBuilder b) updates]) = _$Astro;

  @BuiltValueField(wireName: 'sunrise')
  String? get sunrise;
  @BuiltValueField(wireName: 'sunset')
  String? get sunset;
  @BuiltValueField(wireName: 'moonrise')
  String? get moonrise;
  @BuiltValueField(wireName: 'moonset')
  String? get moonset;
  @BuiltValueField(wireName: 'moon_phase')
  String? get moonPhase;
  @BuiltValueField(wireName: 'moon_illumination')
  String? get moonIllumination;
  @BuiltValueField(wireName: 'is_moon_up')
  int? get isMoonUp;
  @BuiltValueField(wireName: 'is_sun_up')
  int? get isSunUp;
  String toJson() {
    return json.encode(serializers.serializeWith(Astro.serializer, this));
  }

  static Astro? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Astro.serializer, json.decode(jsonString));
  }

  static Serializer<Astro> get serializer => _$astroSerializer;
}

abstract class Hour implements Built<Hour, HourBuilder> {
  Hour._();

  factory Hour([Function(HourBuilder b) updates]) = _$Hour;

  @BuiltValueField(wireName: 'time_epoch')
  int? get timeEpoch;
  @BuiltValueField(wireName: 'time')
  String? get time;
  @BuiltValueField(wireName: 'temp_c')
  double? get tempC;
  @BuiltValueField(wireName: 'temp_f')
  double? get tempF;
  @BuiltValueField(wireName: 'is_day')
  int? get isDay;
  @BuiltValueField(wireName: 'condition')
  Condition? get condition;
  @BuiltValueField(wireName: 'wind_mph')
  double? get windMph;
  @BuiltValueField(wireName: 'wind_kph')
  double? get windKph;
  @BuiltValueField(wireName: 'wind_degree')
  int? get windDegree;
  @BuiltValueField(wireName: 'wind_dir')
  String? get windDir;
  @BuiltValueField(wireName: 'pressure_mb')
  int? get pressureMb;
  @BuiltValueField(wireName: 'pressure_in')
  double? get pressureIn;
  @BuiltValueField(wireName: 'precip_mm')
  int? get precipMm;
  @BuiltValueField(wireName: 'precip_in')
  int? get precipIn;
  @BuiltValueField(wireName: 'humidity')
  int? get humidity;
  @BuiltValueField(wireName: 'cloud')
  int? get cloud;
  @BuiltValueField(wireName: 'feelslike_c')
  double? get feelslikeC;
  @BuiltValueField(wireName: 'feelslike_f')
  double? get feelslikeF;
  @BuiltValueField(wireName: 'windchill_c')
  double? get windchillC;
  @BuiltValueField(wireName: 'windchill_f')
  double? get windchillF;
  @BuiltValueField(wireName: 'heatindex_c')
  double? get heatindexC;
  @BuiltValueField(wireName: 'heatindex_f')
  double? get heatindexF;
  @BuiltValueField(wireName: 'dewpoint_c')
  double? get dewpointC;
  @BuiltValueField(wireName: 'dewpoint_f')
  double? get dewpointF;
  @BuiltValueField(wireName: 'will_it_rain')
  int? get willItRain;
  @BuiltValueField(wireName: 'chance_of_rain')
  int? get chanceOfRain;
  @BuiltValueField(wireName: 'will_it_snow')
  int? get willItSnow;
  @BuiltValueField(wireName: 'chance_of_snow')
  int? get chanceOfSnow;
  @BuiltValueField(wireName: 'vis_km')
  int? get visKm;
  @BuiltValueField(wireName: 'vis_miles')
  double? get visMiles;
  @BuiltValueField(wireName: 'gust_mph')
  double? get gustMph;
  @BuiltValueField(wireName: 'gust_kph')
  double? get gustKph;
  @BuiltValueField(wireName: 'uv')
  int? get uv;
  String toJson() {
    return json.encode(serializers.serializeWith(Hour.serializer, this));
  }

  static Hour? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Hour.serializer, json.decode(jsonString));
  }

  static Serializer<Hour> get serializer => _$hourSerializer;
}
