// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WeatherModel> _$weatherModelSerializer =
    new _$WeatherModelSerializer();
Serializer<Location> _$locationSerializer = new _$LocationSerializer();
Serializer<Current> _$currentSerializer = new _$CurrentSerializer();
Serializer<Forecast> _$forecastSerializer = new _$ForecastSerializer();
Serializer<Forecastday> _$forecastdaySerializer = new _$ForecastdaySerializer();
Serializer<Day> _$daySerializer = new _$DaySerializer();
Serializer<Condition> _$conditionSerializer = new _$ConditionSerializer();
Serializer<Astro> _$astroSerializer = new _$AstroSerializer();
Serializer<Hour> _$hourSerializer = new _$HourSerializer();

class _$WeatherModelSerializer implements StructuredSerializer<WeatherModel> {
  @override
  final Iterable<Type> types = const [WeatherModel, _$WeatherModel];
  @override
  final String wireName = 'WeatherModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, WeatherModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Location)));
    }
    value = object.current;
    if (value != null) {
      result
        ..add('current')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Current)));
    }
    value = object.forecast;
    if (value != null) {
      result
        ..add('forecast')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Forecast)));
    }
    return result;
  }

  @override
  WeatherModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'location':
          result.location.replace(serializers.deserialize(value,
              specifiedType: const FullType(Location))! as Location);
          break;
        case 'current':
          result.current.replace(serializers.deserialize(value,
              specifiedType: const FullType(Current))! as Current);
          break;
        case 'forecast':
          result.forecast.replace(serializers.deserialize(value,
              specifiedType: const FullType(Forecast))! as Forecast);
          break;
      }
    }

    return result.build();
  }
}

class _$LocationSerializer implements StructuredSerializer<Location> {
  @override
  final Iterable<Type> types = const [Location, _$Location];
  @override
  final String wireName = 'Location';

  @override
  Iterable<Object?> serialize(Serializers serializers, Location object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.region;
    if (value != null) {
      result
        ..add('region')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.country;
    if (value != null) {
      result
        ..add('country')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lat;
    if (value != null) {
      result
        ..add('lat')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.lon;
    if (value != null) {
      result
        ..add('lon')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.tzId;
    if (value != null) {
      result
        ..add('tz_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.localtimeEpoch;
    if (value != null) {
      result
        ..add('localtime_epoch')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.localtime;
    if (value != null) {
      result
        ..add('localtime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Location deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'region':
          result.region = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lat':
          result.lat = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'lon':
          result.lon = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'tz_id':
          result.tzId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'localtime_epoch':
          result.localtimeEpoch = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'localtime':
          result.localtime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$CurrentSerializer implements StructuredSerializer<Current> {
  @override
  final Iterable<Type> types = const [Current, _$Current];
  @override
  final String wireName = 'Current';

  @override
  Iterable<Object?> serialize(Serializers serializers, Current object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.lastUpdatedEpoch;
    if (value != null) {
      result
        ..add('last_updated_epoch')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.lastUpdated;
    if (value != null) {
      result
        ..add('last_updated')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tempC;
    if (value != null) {
      result
        ..add('temp_c')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.tempF;
    if (value != null) {
      result
        ..add('temp_f')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.isDay;
    if (value != null) {
      result
        ..add('is_day')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.condition;
    if (value != null) {
      result
        ..add('condition')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Condition)));
    }
    value = object.windMph;
    if (value != null) {
      result
        ..add('wind_mph')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.windKph;
    if (value != null) {
      result
        ..add('wind_kph')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.windDegree;
    if (value != null) {
      result
        ..add('wind_degree')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.windDir;
    if (value != null) {
      result
        ..add('wind_dir')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pressureMb;
    if (value != null) {
      result
        ..add('pressure_mb')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.pressureIn;
    if (value != null) {
      result
        ..add('pressure_in')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.precipMm;
    if (value != null) {
      result
        ..add('precip_mm')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.precipIn;
    if (value != null) {
      result
        ..add('precip_in')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.humidity;
    if (value != null) {
      result
        ..add('humidity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.cloud;
    if (value != null) {
      result
        ..add('cloud')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.feelslikeC;
    if (value != null) {
      result
        ..add('feelslike_c')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.feelslikeF;
    if (value != null) {
      result
        ..add('feelslike_f')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.visKm;
    if (value != null) {
      result
        ..add('vis_km')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.visMiles;
    if (value != null) {
      result
        ..add('vis_miles')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.uv;
    if (value != null) {
      result
        ..add('uv')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.gustMph;
    if (value != null) {
      result
        ..add('gust_mph')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.gustKph;
    if (value != null) {
      result
        ..add('gust_kph')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  Current deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CurrentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'last_updated_epoch':
          result.lastUpdatedEpoch = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'last_updated':
          result.lastUpdated = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'temp_c':
          result.tempC = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'temp_f':
          result.tempF = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'is_day':
          result.isDay = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'condition':
          result.condition.replace(serializers.deserialize(value,
              specifiedType: const FullType(Condition))! as Condition);
          break;
        case 'wind_mph':
          result.windMph = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'wind_kph':
          result.windKph = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'wind_degree':
          result.windDegree = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'wind_dir':
          result.windDir = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pressure_mb':
          result.pressureMb = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'pressure_in':
          result.pressureIn = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'precip_mm':
          result.precipMm = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'precip_in':
          result.precipIn = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'humidity':
          result.humidity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'cloud':
          result.cloud = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'feelslike_c':
          result.feelslikeC = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'feelslike_f':
          result.feelslikeF = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'vis_km':
          result.visKm = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'vis_miles':
          result.visMiles = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'uv':
          result.uv = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'gust_mph':
          result.gustMph = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'gust_kph':
          result.gustKph = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$ForecastSerializer implements StructuredSerializer<Forecast> {
  @override
  final Iterable<Type> types = const [Forecast, _$Forecast];
  @override
  final String wireName = 'Forecast';

  @override
  Iterable<Object?> serialize(Serializers serializers, Forecast object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.forecastday;
    if (value != null) {
      result
        ..add('forecastday')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(Forecastday)])));
    }
    return result;
  }

  @override
  Forecast deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ForecastBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'forecastday':
          result.forecastday.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Forecastday)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$ForecastdaySerializer implements StructuredSerializer<Forecastday> {
  @override
  final Iterable<Type> types = const [Forecastday, _$Forecastday];
  @override
  final String wireName = 'Forecastday';

  @override
  Iterable<Object?> serialize(Serializers serializers, Forecastday object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dateEpoch;
    if (value != null) {
      result
        ..add('date_epoch')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.day;
    if (value != null) {
      result
        ..add('day')
        ..add(serializers.serialize(value, specifiedType: const FullType(Day)));
    }
    value = object.astro;
    if (value != null) {
      result
        ..add('astro')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Astro)));
    }
    value = object.hour;
    if (value != null) {
      result
        ..add('hour')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Hour)])));
    }
    return result;
  }

  @override
  Forecastday deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ForecastdayBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'date_epoch':
          result.dateEpoch = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'day':
          result.day.replace(serializers.deserialize(value,
              specifiedType: const FullType(Day))! as Day);
          break;
        case 'astro':
          result.astro.replace(serializers.deserialize(value,
              specifiedType: const FullType(Astro))! as Astro);
          break;
        case 'hour':
          result.hour.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Hour)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$DaySerializer implements StructuredSerializer<Day> {
  @override
  final Iterable<Type> types = const [Day, _$Day];
  @override
  final String wireName = 'Day';

  @override
  Iterable<Object?> serialize(Serializers serializers, Day object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.maxtempC;
    if (value != null) {
      result
        ..add('maxtemp_c')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.maxtempF;
    if (value != null) {
      result
        ..add('maxtemp_f')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.mintempC;
    if (value != null) {
      result
        ..add('mintemp_c')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.mintempF;
    if (value != null) {
      result
        ..add('mintemp_f')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.avgtempC;
    if (value != null) {
      result
        ..add('avgtemp_c')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.avgtempF;
    if (value != null) {
      result
        ..add('avgtemp_f')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.maxwindMph;
    if (value != null) {
      result
        ..add('maxwind_mph')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.maxwindKph;
    if (value != null) {
      result
        ..add('maxwind_kph')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.totalprecipMm;
    if (value != null) {
      result
        ..add('totalprecip_mm')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.totalprecipIn;
    if (value != null) {
      result
        ..add('totalprecip_in')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.totalsnowCm;
    if (value != null) {
      result
        ..add('totalsnow_cm')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.avgvisKm;
    if (value != null) {
      result
        ..add('avgvis_km')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.avgvisMiles;
    if (value != null) {
      result
        ..add('avgvis_miles')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.avghumidity;
    if (value != null) {
      result
        ..add('avghumidity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.dailyWillItRain;
    if (value != null) {
      result
        ..add('daily_will_it_rain')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.dailyChanceOfRain;
    if (value != null) {
      result
        ..add('daily_chance_of_rain')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.dailyWillItSnow;
    if (value != null) {
      result
        ..add('daily_will_it_snow')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.dailyChanceOfSnow;
    if (value != null) {
      result
        ..add('daily_chance_of_snow')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.condition;
    if (value != null) {
      result
        ..add('condition')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Condition)));
    }
    value = object.uv;
    if (value != null) {
      result
        ..add('uv')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Day deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DayBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'maxtemp_c':
          result.maxtempC = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'maxtemp_f':
          result.maxtempF = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'mintemp_c':
          result.mintempC = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'mintemp_f':
          result.mintempF = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'avgtemp_c':
          result.avgtempC = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'avgtemp_f':
          result.avgtempF = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'maxwind_mph':
          result.maxwindMph = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'maxwind_kph':
          result.maxwindKph = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'totalprecip_mm':
          result.totalprecipMm = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'totalprecip_in':
          result.totalprecipIn = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'totalsnow_cm':
          result.totalsnowCm = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'avgvis_km':
          result.avgvisKm = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'avgvis_miles':
          result.avgvisMiles = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'avghumidity':
          result.avghumidity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'daily_will_it_rain':
          result.dailyWillItRain = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'daily_chance_of_rain':
          result.dailyChanceOfRain = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'daily_will_it_snow':
          result.dailyWillItSnow = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'daily_chance_of_snow':
          result.dailyChanceOfSnow = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'condition':
          result.condition.replace(serializers.deserialize(value,
              specifiedType: const FullType(Condition))! as Condition);
          break;
        case 'uv':
          result.uv = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$ConditionSerializer implements StructuredSerializer<Condition> {
  @override
  final Iterable<Type> types = const [Condition, _$Condition];
  @override
  final String wireName = 'Condition';

  @override
  Iterable<Object?> serialize(Serializers serializers, Condition object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.text;
    if (value != null) {
      result
        ..add('text')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.icon;
    if (value != null) {
      result
        ..add('icon')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.code;
    if (value != null) {
      result
        ..add('code')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Condition deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ConditionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'icon':
          result.icon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$AstroSerializer implements StructuredSerializer<Astro> {
  @override
  final Iterable<Type> types = const [Astro, _$Astro];
  @override
  final String wireName = 'Astro';

  @override
  Iterable<Object?> serialize(Serializers serializers, Astro object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.sunrise;
    if (value != null) {
      result
        ..add('sunrise')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sunset;
    if (value != null) {
      result
        ..add('sunset')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.moonrise;
    if (value != null) {
      result
        ..add('moonrise')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.moonset;
    if (value != null) {
      result
        ..add('moonset')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.moonPhase;
    if (value != null) {
      result
        ..add('moon_phase')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.moonIllumination;
    if (value != null) {
      result
        ..add('moon_illumination')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isMoonUp;
    if (value != null) {
      result
        ..add('is_moon_up')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.isSunUp;
    if (value != null) {
      result
        ..add('is_sun_up')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Astro deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AstroBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'sunrise':
          result.sunrise = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sunset':
          result.sunset = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'moonrise':
          result.moonrise = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'moonset':
          result.moonset = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'moon_phase':
          result.moonPhase = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'moon_illumination':
          result.moonIllumination = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'is_moon_up':
          result.isMoonUp = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'is_sun_up':
          result.isSunUp = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$HourSerializer implements StructuredSerializer<Hour> {
  @override
  final Iterable<Type> types = const [Hour, _$Hour];
  @override
  final String wireName = 'Hour';

  @override
  Iterable<Object?> serialize(Serializers serializers, Hour object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.timeEpoch;
    if (value != null) {
      result
        ..add('time_epoch')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.time;
    if (value != null) {
      result
        ..add('time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tempC;
    if (value != null) {
      result
        ..add('temp_c')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.tempF;
    if (value != null) {
      result
        ..add('temp_f')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.isDay;
    if (value != null) {
      result
        ..add('is_day')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.condition;
    if (value != null) {
      result
        ..add('condition')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Condition)));
    }
    value = object.windMph;
    if (value != null) {
      result
        ..add('wind_mph')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.windKph;
    if (value != null) {
      result
        ..add('wind_kph')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.windDegree;
    if (value != null) {
      result
        ..add('wind_degree')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.windDir;
    if (value != null) {
      result
        ..add('wind_dir')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pressureMb;
    if (value != null) {
      result
        ..add('pressure_mb')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.pressureIn;
    if (value != null) {
      result
        ..add('pressure_in')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.precipMm;
    if (value != null) {
      result
        ..add('precip_mm')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.precipIn;
    if (value != null) {
      result
        ..add('precip_in')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.humidity;
    if (value != null) {
      result
        ..add('humidity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.cloud;
    if (value != null) {
      result
        ..add('cloud')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.feelslikeC;
    if (value != null) {
      result
        ..add('feelslike_c')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.feelslikeF;
    if (value != null) {
      result
        ..add('feelslike_f')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.windchillC;
    if (value != null) {
      result
        ..add('windchill_c')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.windchillF;
    if (value != null) {
      result
        ..add('windchill_f')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.heatindexC;
    if (value != null) {
      result
        ..add('heatindex_c')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.heatindexF;
    if (value != null) {
      result
        ..add('heatindex_f')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.dewpointC;
    if (value != null) {
      result
        ..add('dewpoint_c')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.dewpointF;
    if (value != null) {
      result
        ..add('dewpoint_f')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.willItRain;
    if (value != null) {
      result
        ..add('will_it_rain')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.chanceOfRain;
    if (value != null) {
      result
        ..add('chance_of_rain')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.willItSnow;
    if (value != null) {
      result
        ..add('will_it_snow')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.chanceOfSnow;
    if (value != null) {
      result
        ..add('chance_of_snow')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.visKm;
    if (value != null) {
      result
        ..add('vis_km')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.visMiles;
    if (value != null) {
      result
        ..add('vis_miles')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.gustMph;
    if (value != null) {
      result
        ..add('gust_mph')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.gustKph;
    if (value != null) {
      result
        ..add('gust_kph')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.uv;
    if (value != null) {
      result
        ..add('uv')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Hour deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HourBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'time_epoch':
          result.timeEpoch = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'temp_c':
          result.tempC = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'temp_f':
          result.tempF = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'is_day':
          result.isDay = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'condition':
          result.condition.replace(serializers.deserialize(value,
              specifiedType: const FullType(Condition))! as Condition);
          break;
        case 'wind_mph':
          result.windMph = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'wind_kph':
          result.windKph = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'wind_degree':
          result.windDegree = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'wind_dir':
          result.windDir = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pressure_mb':
          result.pressureMb = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'pressure_in':
          result.pressureIn = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'precip_mm':
          result.precipMm = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'precip_in':
          result.precipIn = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'humidity':
          result.humidity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'cloud':
          result.cloud = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'feelslike_c':
          result.feelslikeC = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'feelslike_f':
          result.feelslikeF = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'windchill_c':
          result.windchillC = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'windchill_f':
          result.windchillF = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'heatindex_c':
          result.heatindexC = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'heatindex_f':
          result.heatindexF = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'dewpoint_c':
          result.dewpointC = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'dewpoint_f':
          result.dewpointF = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'will_it_rain':
          result.willItRain = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'chance_of_rain':
          result.chanceOfRain = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'will_it_snow':
          result.willItSnow = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'chance_of_snow':
          result.chanceOfSnow = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'vis_km':
          result.visKm = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'vis_miles':
          result.visMiles = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'gust_mph':
          result.gustMph = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'gust_kph':
          result.gustKph = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'uv':
          result.uv = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$WeatherModel extends WeatherModel {
  @override
  final Location? location;
  @override
  final Current? current;
  @override
  final Forecast? forecast;

  factory _$WeatherModel([void Function(WeatherModelBuilder)? updates]) =>
      (new WeatherModelBuilder()..update(updates))._build();

  _$WeatherModel._({this.location, this.current, this.forecast}) : super._();

  @override
  WeatherModel rebuild(void Function(WeatherModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherModelBuilder toBuilder() => new WeatherModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherModel &&
        location == other.location &&
        current == other.current &&
        forecast == other.forecast;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, current.hashCode);
    _$hash = $jc(_$hash, forecast.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeatherModel')
          ..add('location', location)
          ..add('current', current)
          ..add('forecast', forecast))
        .toString();
  }
}

class WeatherModelBuilder
    implements Builder<WeatherModel, WeatherModelBuilder> {
  _$WeatherModel? _$v;

  LocationBuilder? _location;
  LocationBuilder get location => _$this._location ??= new LocationBuilder();
  set location(LocationBuilder? location) => _$this._location = location;

  CurrentBuilder? _current;
  CurrentBuilder get current => _$this._current ??= new CurrentBuilder();
  set current(CurrentBuilder? current) => _$this._current = current;

  ForecastBuilder? _forecast;
  ForecastBuilder get forecast => _$this._forecast ??= new ForecastBuilder();
  set forecast(ForecastBuilder? forecast) => _$this._forecast = forecast;

  WeatherModelBuilder();

  WeatherModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _location = $v.location?.toBuilder();
      _current = $v.current?.toBuilder();
      _forecast = $v.forecast?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WeatherModel;
  }

  @override
  void update(void Function(WeatherModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeatherModel build() => _build();

  _$WeatherModel _build() {
    _$WeatherModel _$result;
    try {
      _$result = _$v ??
          new _$WeatherModel._(
              location: _location?.build(),
              current: _current?.build(),
              forecast: _forecast?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'location';
        _location?.build();
        _$failedField = 'current';
        _current?.build();
        _$failedField = 'forecast';
        _forecast?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'WeatherModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Location extends Location {
  @override
  final String? name;
  @override
  final String? region;
  @override
  final String? country;
  @override
  final double? lat;
  @override
  final double? lon;
  @override
  final String? tzId;
  @override
  final int? localtimeEpoch;
  @override
  final String? localtime;

  factory _$Location([void Function(LocationBuilder)? updates]) =>
      (new LocationBuilder()..update(updates))._build();

  _$Location._(
      {this.name,
      this.region,
      this.country,
      this.lat,
      this.lon,
      this.tzId,
      this.localtimeEpoch,
      this.localtime})
      : super._();

  @override
  Location rebuild(void Function(LocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocationBuilder toBuilder() => new LocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Location &&
        name == other.name &&
        region == other.region &&
        country == other.country &&
        lat == other.lat &&
        lon == other.lon &&
        tzId == other.tzId &&
        localtimeEpoch == other.localtimeEpoch &&
        localtime == other.localtime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, lat.hashCode);
    _$hash = $jc(_$hash, lon.hashCode);
    _$hash = $jc(_$hash, tzId.hashCode);
    _$hash = $jc(_$hash, localtimeEpoch.hashCode);
    _$hash = $jc(_$hash, localtime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Location')
          ..add('name', name)
          ..add('region', region)
          ..add('country', country)
          ..add('lat', lat)
          ..add('lon', lon)
          ..add('tzId', tzId)
          ..add('localtimeEpoch', localtimeEpoch)
          ..add('localtime', localtime))
        .toString();
  }
}

class LocationBuilder implements Builder<Location, LocationBuilder> {
  _$Location? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  double? _lat;
  double? get lat => _$this._lat;
  set lat(double? lat) => _$this._lat = lat;

  double? _lon;
  double? get lon => _$this._lon;
  set lon(double? lon) => _$this._lon = lon;

  String? _tzId;
  String? get tzId => _$this._tzId;
  set tzId(String? tzId) => _$this._tzId = tzId;

  int? _localtimeEpoch;
  int? get localtimeEpoch => _$this._localtimeEpoch;
  set localtimeEpoch(int? localtimeEpoch) =>
      _$this._localtimeEpoch = localtimeEpoch;

  String? _localtime;
  String? get localtime => _$this._localtime;
  set localtime(String? localtime) => _$this._localtime = localtime;

  LocationBuilder();

  LocationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _region = $v.region;
      _country = $v.country;
      _lat = $v.lat;
      _lon = $v.lon;
      _tzId = $v.tzId;
      _localtimeEpoch = $v.localtimeEpoch;
      _localtime = $v.localtime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Location other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Location;
  }

  @override
  void update(void Function(LocationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Location build() => _build();

  _$Location _build() {
    final _$result = _$v ??
        new _$Location._(
            name: name,
            region: region,
            country: country,
            lat: lat,
            lon: lon,
            tzId: tzId,
            localtimeEpoch: localtimeEpoch,
            localtime: localtime);
    replace(_$result);
    return _$result;
  }
}

class _$Current extends Current {
  @override
  final int? lastUpdatedEpoch;
  @override
  final String? lastUpdated;
  @override
  final double? tempC;
  @override
  final double? tempF;
  @override
  final int? isDay;
  @override
  final Condition? condition;
  @override
  final double? windMph;
  @override
  final double? windKph;
  @override
  final int? windDegree;
  @override
  final String? windDir;
  @override
  final int? pressureMb;
  @override
  final double? pressureIn;
  @override
  final int? precipMm;
  @override
  final int? precipIn;
  @override
  final int? humidity;
  @override
  final int? cloud;
  @override
  final double? feelslikeC;
  @override
  final double? feelslikeF;
  @override
  final int? visKm;
  @override
  final int? visMiles;
  @override
  final int? uv;
  @override
  final double? gustMph;
  @override
  final double? gustKph;

  factory _$Current([void Function(CurrentBuilder)? updates]) =>
      (new CurrentBuilder()..update(updates))._build();

  _$Current._(
      {this.lastUpdatedEpoch,
      this.lastUpdated,
      this.tempC,
      this.tempF,
      this.isDay,
      this.condition,
      this.windMph,
      this.windKph,
      this.windDegree,
      this.windDir,
      this.pressureMb,
      this.pressureIn,
      this.precipMm,
      this.precipIn,
      this.humidity,
      this.cloud,
      this.feelslikeC,
      this.feelslikeF,
      this.visKm,
      this.visMiles,
      this.uv,
      this.gustMph,
      this.gustKph})
      : super._();

  @override
  Current rebuild(void Function(CurrentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CurrentBuilder toBuilder() => new CurrentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Current &&
        lastUpdatedEpoch == other.lastUpdatedEpoch &&
        lastUpdated == other.lastUpdated &&
        tempC == other.tempC &&
        tempF == other.tempF &&
        isDay == other.isDay &&
        condition == other.condition &&
        windMph == other.windMph &&
        windKph == other.windKph &&
        windDegree == other.windDegree &&
        windDir == other.windDir &&
        pressureMb == other.pressureMb &&
        pressureIn == other.pressureIn &&
        precipMm == other.precipMm &&
        precipIn == other.precipIn &&
        humidity == other.humidity &&
        cloud == other.cloud &&
        feelslikeC == other.feelslikeC &&
        feelslikeF == other.feelslikeF &&
        visKm == other.visKm &&
        visMiles == other.visMiles &&
        uv == other.uv &&
        gustMph == other.gustMph &&
        gustKph == other.gustKph;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, lastUpdatedEpoch.hashCode);
    _$hash = $jc(_$hash, lastUpdated.hashCode);
    _$hash = $jc(_$hash, tempC.hashCode);
    _$hash = $jc(_$hash, tempF.hashCode);
    _$hash = $jc(_$hash, isDay.hashCode);
    _$hash = $jc(_$hash, condition.hashCode);
    _$hash = $jc(_$hash, windMph.hashCode);
    _$hash = $jc(_$hash, windKph.hashCode);
    _$hash = $jc(_$hash, windDegree.hashCode);
    _$hash = $jc(_$hash, windDir.hashCode);
    _$hash = $jc(_$hash, pressureMb.hashCode);
    _$hash = $jc(_$hash, pressureIn.hashCode);
    _$hash = $jc(_$hash, precipMm.hashCode);
    _$hash = $jc(_$hash, precipIn.hashCode);
    _$hash = $jc(_$hash, humidity.hashCode);
    _$hash = $jc(_$hash, cloud.hashCode);
    _$hash = $jc(_$hash, feelslikeC.hashCode);
    _$hash = $jc(_$hash, feelslikeF.hashCode);
    _$hash = $jc(_$hash, visKm.hashCode);
    _$hash = $jc(_$hash, visMiles.hashCode);
    _$hash = $jc(_$hash, uv.hashCode);
    _$hash = $jc(_$hash, gustMph.hashCode);
    _$hash = $jc(_$hash, gustKph.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Current')
          ..add('lastUpdatedEpoch', lastUpdatedEpoch)
          ..add('lastUpdated', lastUpdated)
          ..add('tempC', tempC)
          ..add('tempF', tempF)
          ..add('isDay', isDay)
          ..add('condition', condition)
          ..add('windMph', windMph)
          ..add('windKph', windKph)
          ..add('windDegree', windDegree)
          ..add('windDir', windDir)
          ..add('pressureMb', pressureMb)
          ..add('pressureIn', pressureIn)
          ..add('precipMm', precipMm)
          ..add('precipIn', precipIn)
          ..add('humidity', humidity)
          ..add('cloud', cloud)
          ..add('feelslikeC', feelslikeC)
          ..add('feelslikeF', feelslikeF)
          ..add('visKm', visKm)
          ..add('visMiles', visMiles)
          ..add('uv', uv)
          ..add('gustMph', gustMph)
          ..add('gustKph', gustKph))
        .toString();
  }
}

class CurrentBuilder implements Builder<Current, CurrentBuilder> {
  _$Current? _$v;

  int? _lastUpdatedEpoch;
  int? get lastUpdatedEpoch => _$this._lastUpdatedEpoch;
  set lastUpdatedEpoch(int? lastUpdatedEpoch) =>
      _$this._lastUpdatedEpoch = lastUpdatedEpoch;

  String? _lastUpdated;
  String? get lastUpdated => _$this._lastUpdated;
  set lastUpdated(String? lastUpdated) => _$this._lastUpdated = lastUpdated;

  double? _tempC;
  double? get tempC => _$this._tempC;
  set tempC(double? tempC) => _$this._tempC = tempC;

  double? _tempF;
  double? get tempF => _$this._tempF;
  set tempF(double? tempF) => _$this._tempF = tempF;

  int? _isDay;
  int? get isDay => _$this._isDay;
  set isDay(int? isDay) => _$this._isDay = isDay;

  ConditionBuilder? _condition;
  ConditionBuilder get condition =>
      _$this._condition ??= new ConditionBuilder();
  set condition(ConditionBuilder? condition) => _$this._condition = condition;

  double? _windMph;
  double? get windMph => _$this._windMph;
  set windMph(double? windMph) => _$this._windMph = windMph;

  double? _windKph;
  double? get windKph => _$this._windKph;
  set windKph(double? windKph) => _$this._windKph = windKph;

  int? _windDegree;
  int? get windDegree => _$this._windDegree;
  set windDegree(int? windDegree) => _$this._windDegree = windDegree;

  String? _windDir;
  String? get windDir => _$this._windDir;
  set windDir(String? windDir) => _$this._windDir = windDir;

  int? _pressureMb;
  int? get pressureMb => _$this._pressureMb;
  set pressureMb(int? pressureMb) => _$this._pressureMb = pressureMb;

  double? _pressureIn;
  double? get pressureIn => _$this._pressureIn;
  set pressureIn(double? pressureIn) => _$this._pressureIn = pressureIn;

  int? _precipMm;
  int? get precipMm => _$this._precipMm;
  set precipMm(int? precipMm) => _$this._precipMm = precipMm;

  int? _precipIn;
  int? get precipIn => _$this._precipIn;
  set precipIn(int? precipIn) => _$this._precipIn = precipIn;

  int? _humidity;
  int? get humidity => _$this._humidity;
  set humidity(int? humidity) => _$this._humidity = humidity;

  int? _cloud;
  int? get cloud => _$this._cloud;
  set cloud(int? cloud) => _$this._cloud = cloud;

  double? _feelslikeC;
  double? get feelslikeC => _$this._feelslikeC;
  set feelslikeC(double? feelslikeC) => _$this._feelslikeC = feelslikeC;

  double? _feelslikeF;
  double? get feelslikeF => _$this._feelslikeF;
  set feelslikeF(double? feelslikeF) => _$this._feelslikeF = feelslikeF;

  int? _visKm;
  int? get visKm => _$this._visKm;
  set visKm(int? visKm) => _$this._visKm = visKm;

  int? _visMiles;
  int? get visMiles => _$this._visMiles;
  set visMiles(int? visMiles) => _$this._visMiles = visMiles;

  int? _uv;
  int? get uv => _$this._uv;
  set uv(int? uv) => _$this._uv = uv;

  double? _gustMph;
  double? get gustMph => _$this._gustMph;
  set gustMph(double? gustMph) => _$this._gustMph = gustMph;

  double? _gustKph;
  double? get gustKph => _$this._gustKph;
  set gustKph(double? gustKph) => _$this._gustKph = gustKph;

  CurrentBuilder();

  CurrentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lastUpdatedEpoch = $v.lastUpdatedEpoch;
      _lastUpdated = $v.lastUpdated;
      _tempC = $v.tempC;
      _tempF = $v.tempF;
      _isDay = $v.isDay;
      _condition = $v.condition?.toBuilder();
      _windMph = $v.windMph;
      _windKph = $v.windKph;
      _windDegree = $v.windDegree;
      _windDir = $v.windDir;
      _pressureMb = $v.pressureMb;
      _pressureIn = $v.pressureIn;
      _precipMm = $v.precipMm;
      _precipIn = $v.precipIn;
      _humidity = $v.humidity;
      _cloud = $v.cloud;
      _feelslikeC = $v.feelslikeC;
      _feelslikeF = $v.feelslikeF;
      _visKm = $v.visKm;
      _visMiles = $v.visMiles;
      _uv = $v.uv;
      _gustMph = $v.gustMph;
      _gustKph = $v.gustKph;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Current other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Current;
  }

  @override
  void update(void Function(CurrentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Current build() => _build();

  _$Current _build() {
    _$Current _$result;
    try {
      _$result = _$v ??
          new _$Current._(
              lastUpdatedEpoch: lastUpdatedEpoch,
              lastUpdated: lastUpdated,
              tempC: tempC,
              tempF: tempF,
              isDay: isDay,
              condition: _condition?.build(),
              windMph: windMph,
              windKph: windKph,
              windDegree: windDegree,
              windDir: windDir,
              pressureMb: pressureMb,
              pressureIn: pressureIn,
              precipMm: precipMm,
              precipIn: precipIn,
              humidity: humidity,
              cloud: cloud,
              feelslikeC: feelslikeC,
              feelslikeF: feelslikeF,
              visKm: visKm,
              visMiles: visMiles,
              uv: uv,
              gustMph: gustMph,
              gustKph: gustKph);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'condition';
        _condition?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Current', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Forecast extends Forecast {
  @override
  final BuiltList<Forecastday>? forecastday;

  factory _$Forecast([void Function(ForecastBuilder)? updates]) =>
      (new ForecastBuilder()..update(updates))._build();

  _$Forecast._({this.forecastday}) : super._();

  @override
  Forecast rebuild(void Function(ForecastBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForecastBuilder toBuilder() => new ForecastBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Forecast && forecastday == other.forecastday;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, forecastday.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Forecast')
          ..add('forecastday', forecastday))
        .toString();
  }
}

class ForecastBuilder implements Builder<Forecast, ForecastBuilder> {
  _$Forecast? _$v;

  ListBuilder<Forecastday>? _forecastday;
  ListBuilder<Forecastday> get forecastday =>
      _$this._forecastday ??= new ListBuilder<Forecastday>();
  set forecastday(ListBuilder<Forecastday>? forecastday) =>
      _$this._forecastday = forecastday;

  ForecastBuilder();

  ForecastBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _forecastday = $v.forecastday?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Forecast other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Forecast;
  }

  @override
  void update(void Function(ForecastBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Forecast build() => _build();

  _$Forecast _build() {
    _$Forecast _$result;
    try {
      _$result = _$v ?? new _$Forecast._(forecastday: _forecastday?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'forecastday';
        _forecastday?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Forecast', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Forecastday extends Forecastday {
  @override
  final String? date;
  @override
  final int? dateEpoch;
  @override
  final Day? day;
  @override
  final Astro? astro;
  @override
  final BuiltList<Hour>? hour;

  factory _$Forecastday([void Function(ForecastdayBuilder)? updates]) =>
      (new ForecastdayBuilder()..update(updates))._build();

  _$Forecastday._({this.date, this.dateEpoch, this.day, this.astro, this.hour})
      : super._();

  @override
  Forecastday rebuild(void Function(ForecastdayBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForecastdayBuilder toBuilder() => new ForecastdayBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Forecastday &&
        date == other.date &&
        dateEpoch == other.dateEpoch &&
        day == other.day &&
        astro == other.astro &&
        hour == other.hour;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, dateEpoch.hashCode);
    _$hash = $jc(_$hash, day.hashCode);
    _$hash = $jc(_$hash, astro.hashCode);
    _$hash = $jc(_$hash, hour.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Forecastday')
          ..add('date', date)
          ..add('dateEpoch', dateEpoch)
          ..add('day', day)
          ..add('astro', astro)
          ..add('hour', hour))
        .toString();
  }
}

class ForecastdayBuilder implements Builder<Forecastday, ForecastdayBuilder> {
  _$Forecastday? _$v;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  int? _dateEpoch;
  int? get dateEpoch => _$this._dateEpoch;
  set dateEpoch(int? dateEpoch) => _$this._dateEpoch = dateEpoch;

  DayBuilder? _day;
  DayBuilder get day => _$this._day ??= new DayBuilder();
  set day(DayBuilder? day) => _$this._day = day;

  AstroBuilder? _astro;
  AstroBuilder get astro => _$this._astro ??= new AstroBuilder();
  set astro(AstroBuilder? astro) => _$this._astro = astro;

  ListBuilder<Hour>? _hour;
  ListBuilder<Hour> get hour => _$this._hour ??= new ListBuilder<Hour>();
  set hour(ListBuilder<Hour>? hour) => _$this._hour = hour;

  ForecastdayBuilder();

  ForecastdayBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _dateEpoch = $v.dateEpoch;
      _day = $v.day?.toBuilder();
      _astro = $v.astro?.toBuilder();
      _hour = $v.hour?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Forecastday other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Forecastday;
  }

  @override
  void update(void Function(ForecastdayBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Forecastday build() => _build();

  _$Forecastday _build() {
    _$Forecastday _$result;
    try {
      _$result = _$v ??
          new _$Forecastday._(
              date: date,
              dateEpoch: dateEpoch,
              day: _day?.build(),
              astro: _astro?.build(),
              hour: _hour?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'day';
        _day?.build();
        _$failedField = 'astro';
        _astro?.build();
        _$failedField = 'hour';
        _hour?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Forecastday', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Day extends Day {
  @override
  final double? maxtempC;
  @override
  final double? maxtempF;
  @override
  final double? mintempC;
  @override
  final double? mintempF;
  @override
  final double? avgtempC;
  @override
  final double? avgtempF;
  @override
  final double? maxwindMph;
  @override
  final double? maxwindKph;
  @override
  final int? totalprecipMm;
  @override
  final int? totalprecipIn;
  @override
  final int? totalsnowCm;
  @override
  final int? avgvisKm;
  @override
  final int? avgvisMiles;
  @override
  final int? avghumidity;
  @override
  final int? dailyWillItRain;
  @override
  final int? dailyChanceOfRain;
  @override
  final int? dailyWillItSnow;
  @override
  final int? dailyChanceOfSnow;
  @override
  final Condition? condition;
  @override
  final int? uv;

  factory _$Day([void Function(DayBuilder)? updates]) =>
      (new DayBuilder()..update(updates))._build();

  _$Day._(
      {this.maxtempC,
      this.maxtempF,
      this.mintempC,
      this.mintempF,
      this.avgtempC,
      this.avgtempF,
      this.maxwindMph,
      this.maxwindKph,
      this.totalprecipMm,
      this.totalprecipIn,
      this.totalsnowCm,
      this.avgvisKm,
      this.avgvisMiles,
      this.avghumidity,
      this.dailyWillItRain,
      this.dailyChanceOfRain,
      this.dailyWillItSnow,
      this.dailyChanceOfSnow,
      this.condition,
      this.uv})
      : super._();

  @override
  Day rebuild(void Function(DayBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DayBuilder toBuilder() => new DayBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Day &&
        maxtempC == other.maxtempC &&
        maxtempF == other.maxtempF &&
        mintempC == other.mintempC &&
        mintempF == other.mintempF &&
        avgtempC == other.avgtempC &&
        avgtempF == other.avgtempF &&
        maxwindMph == other.maxwindMph &&
        maxwindKph == other.maxwindKph &&
        totalprecipMm == other.totalprecipMm &&
        totalprecipIn == other.totalprecipIn &&
        totalsnowCm == other.totalsnowCm &&
        avgvisKm == other.avgvisKm &&
        avgvisMiles == other.avgvisMiles &&
        avghumidity == other.avghumidity &&
        dailyWillItRain == other.dailyWillItRain &&
        dailyChanceOfRain == other.dailyChanceOfRain &&
        dailyWillItSnow == other.dailyWillItSnow &&
        dailyChanceOfSnow == other.dailyChanceOfSnow &&
        condition == other.condition &&
        uv == other.uv;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, maxtempC.hashCode);
    _$hash = $jc(_$hash, maxtempF.hashCode);
    _$hash = $jc(_$hash, mintempC.hashCode);
    _$hash = $jc(_$hash, mintempF.hashCode);
    _$hash = $jc(_$hash, avgtempC.hashCode);
    _$hash = $jc(_$hash, avgtempF.hashCode);
    _$hash = $jc(_$hash, maxwindMph.hashCode);
    _$hash = $jc(_$hash, maxwindKph.hashCode);
    _$hash = $jc(_$hash, totalprecipMm.hashCode);
    _$hash = $jc(_$hash, totalprecipIn.hashCode);
    _$hash = $jc(_$hash, totalsnowCm.hashCode);
    _$hash = $jc(_$hash, avgvisKm.hashCode);
    _$hash = $jc(_$hash, avgvisMiles.hashCode);
    _$hash = $jc(_$hash, avghumidity.hashCode);
    _$hash = $jc(_$hash, dailyWillItRain.hashCode);
    _$hash = $jc(_$hash, dailyChanceOfRain.hashCode);
    _$hash = $jc(_$hash, dailyWillItSnow.hashCode);
    _$hash = $jc(_$hash, dailyChanceOfSnow.hashCode);
    _$hash = $jc(_$hash, condition.hashCode);
    _$hash = $jc(_$hash, uv.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Day')
          ..add('maxtempC', maxtempC)
          ..add('maxtempF', maxtempF)
          ..add('mintempC', mintempC)
          ..add('mintempF', mintempF)
          ..add('avgtempC', avgtempC)
          ..add('avgtempF', avgtempF)
          ..add('maxwindMph', maxwindMph)
          ..add('maxwindKph', maxwindKph)
          ..add('totalprecipMm', totalprecipMm)
          ..add('totalprecipIn', totalprecipIn)
          ..add('totalsnowCm', totalsnowCm)
          ..add('avgvisKm', avgvisKm)
          ..add('avgvisMiles', avgvisMiles)
          ..add('avghumidity', avghumidity)
          ..add('dailyWillItRain', dailyWillItRain)
          ..add('dailyChanceOfRain', dailyChanceOfRain)
          ..add('dailyWillItSnow', dailyWillItSnow)
          ..add('dailyChanceOfSnow', dailyChanceOfSnow)
          ..add('condition', condition)
          ..add('uv', uv))
        .toString();
  }
}

class DayBuilder implements Builder<Day, DayBuilder> {
  _$Day? _$v;

  double? _maxtempC;
  double? get maxtempC => _$this._maxtempC;
  set maxtempC(double? maxtempC) => _$this._maxtempC = maxtempC;

  double? _maxtempF;
  double? get maxtempF => _$this._maxtempF;
  set maxtempF(double? maxtempF) => _$this._maxtempF = maxtempF;

  double? _mintempC;
  double? get mintempC => _$this._mintempC;
  set mintempC(double? mintempC) => _$this._mintempC = mintempC;

  double? _mintempF;
  double? get mintempF => _$this._mintempF;
  set mintempF(double? mintempF) => _$this._mintempF = mintempF;

  double? _avgtempC;
  double? get avgtempC => _$this._avgtempC;
  set avgtempC(double? avgtempC) => _$this._avgtempC = avgtempC;

  double? _avgtempF;
  double? get avgtempF => _$this._avgtempF;
  set avgtempF(double? avgtempF) => _$this._avgtempF = avgtempF;

  double? _maxwindMph;
  double? get maxwindMph => _$this._maxwindMph;
  set maxwindMph(double? maxwindMph) => _$this._maxwindMph = maxwindMph;

  double? _maxwindKph;
  double? get maxwindKph => _$this._maxwindKph;
  set maxwindKph(double? maxwindKph) => _$this._maxwindKph = maxwindKph;

  int? _totalprecipMm;
  int? get totalprecipMm => _$this._totalprecipMm;
  set totalprecipMm(int? totalprecipMm) =>
      _$this._totalprecipMm = totalprecipMm;

  int? _totalprecipIn;
  int? get totalprecipIn => _$this._totalprecipIn;
  set totalprecipIn(int? totalprecipIn) =>
      _$this._totalprecipIn = totalprecipIn;

  int? _totalsnowCm;
  int? get totalsnowCm => _$this._totalsnowCm;
  set totalsnowCm(int? totalsnowCm) => _$this._totalsnowCm = totalsnowCm;

  int? _avgvisKm;
  int? get avgvisKm => _$this._avgvisKm;
  set avgvisKm(int? avgvisKm) => _$this._avgvisKm = avgvisKm;

  int? _avgvisMiles;
  int? get avgvisMiles => _$this._avgvisMiles;
  set avgvisMiles(int? avgvisMiles) => _$this._avgvisMiles = avgvisMiles;

  int? _avghumidity;
  int? get avghumidity => _$this._avghumidity;
  set avghumidity(int? avghumidity) => _$this._avghumidity = avghumidity;

  int? _dailyWillItRain;
  int? get dailyWillItRain => _$this._dailyWillItRain;
  set dailyWillItRain(int? dailyWillItRain) =>
      _$this._dailyWillItRain = dailyWillItRain;

  int? _dailyChanceOfRain;
  int? get dailyChanceOfRain => _$this._dailyChanceOfRain;
  set dailyChanceOfRain(int? dailyChanceOfRain) =>
      _$this._dailyChanceOfRain = dailyChanceOfRain;

  int? _dailyWillItSnow;
  int? get dailyWillItSnow => _$this._dailyWillItSnow;
  set dailyWillItSnow(int? dailyWillItSnow) =>
      _$this._dailyWillItSnow = dailyWillItSnow;

  int? _dailyChanceOfSnow;
  int? get dailyChanceOfSnow => _$this._dailyChanceOfSnow;
  set dailyChanceOfSnow(int? dailyChanceOfSnow) =>
      _$this._dailyChanceOfSnow = dailyChanceOfSnow;

  ConditionBuilder? _condition;
  ConditionBuilder get condition =>
      _$this._condition ??= new ConditionBuilder();
  set condition(ConditionBuilder? condition) => _$this._condition = condition;

  int? _uv;
  int? get uv => _$this._uv;
  set uv(int? uv) => _$this._uv = uv;

  DayBuilder();

  DayBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _maxtempC = $v.maxtempC;
      _maxtempF = $v.maxtempF;
      _mintempC = $v.mintempC;
      _mintempF = $v.mintempF;
      _avgtempC = $v.avgtempC;
      _avgtempF = $v.avgtempF;
      _maxwindMph = $v.maxwindMph;
      _maxwindKph = $v.maxwindKph;
      _totalprecipMm = $v.totalprecipMm;
      _totalprecipIn = $v.totalprecipIn;
      _totalsnowCm = $v.totalsnowCm;
      _avgvisKm = $v.avgvisKm;
      _avgvisMiles = $v.avgvisMiles;
      _avghumidity = $v.avghumidity;
      _dailyWillItRain = $v.dailyWillItRain;
      _dailyChanceOfRain = $v.dailyChanceOfRain;
      _dailyWillItSnow = $v.dailyWillItSnow;
      _dailyChanceOfSnow = $v.dailyChanceOfSnow;
      _condition = $v.condition?.toBuilder();
      _uv = $v.uv;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Day other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Day;
  }

  @override
  void update(void Function(DayBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Day build() => _build();

  _$Day _build() {
    _$Day _$result;
    try {
      _$result = _$v ??
          new _$Day._(
              maxtempC: maxtempC,
              maxtempF: maxtempF,
              mintempC: mintempC,
              mintempF: mintempF,
              avgtempC: avgtempC,
              avgtempF: avgtempF,
              maxwindMph: maxwindMph,
              maxwindKph: maxwindKph,
              totalprecipMm: totalprecipMm,
              totalprecipIn: totalprecipIn,
              totalsnowCm: totalsnowCm,
              avgvisKm: avgvisKm,
              avgvisMiles: avgvisMiles,
              avghumidity: avghumidity,
              dailyWillItRain: dailyWillItRain,
              dailyChanceOfRain: dailyChanceOfRain,
              dailyWillItSnow: dailyWillItSnow,
              dailyChanceOfSnow: dailyChanceOfSnow,
              condition: _condition?.build(),
              uv: uv);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'condition';
        _condition?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Day', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Condition extends Condition {
  @override
  final String? text;
  @override
  final String? icon;
  @override
  final int? code;

  factory _$Condition([void Function(ConditionBuilder)? updates]) =>
      (new ConditionBuilder()..update(updates))._build();

  _$Condition._({this.text, this.icon, this.code}) : super._();

  @override
  Condition rebuild(void Function(ConditionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConditionBuilder toBuilder() => new ConditionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Condition &&
        text == other.text &&
        icon == other.icon &&
        code == other.code;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Condition')
          ..add('text', text)
          ..add('icon', icon)
          ..add('code', code))
        .toString();
  }
}

class ConditionBuilder implements Builder<Condition, ConditionBuilder> {
  _$Condition? _$v;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  ConditionBuilder();

  ConditionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _text = $v.text;
      _icon = $v.icon;
      _code = $v.code;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Condition other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Condition;
  }

  @override
  void update(void Function(ConditionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Condition build() => _build();

  _$Condition _build() {
    final _$result =
        _$v ?? new _$Condition._(text: text, icon: icon, code: code);
    replace(_$result);
    return _$result;
  }
}

class _$Astro extends Astro {
  @override
  final String? sunrise;
  @override
  final String? sunset;
  @override
  final String? moonrise;
  @override
  final String? moonset;
  @override
  final String? moonPhase;
  @override
  final String? moonIllumination;
  @override
  final int? isMoonUp;
  @override
  final int? isSunUp;

  factory _$Astro([void Function(AstroBuilder)? updates]) =>
      (new AstroBuilder()..update(updates))._build();

  _$Astro._(
      {this.sunrise,
      this.sunset,
      this.moonrise,
      this.moonset,
      this.moonPhase,
      this.moonIllumination,
      this.isMoonUp,
      this.isSunUp})
      : super._();

  @override
  Astro rebuild(void Function(AstroBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AstroBuilder toBuilder() => new AstroBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Astro &&
        sunrise == other.sunrise &&
        sunset == other.sunset &&
        moonrise == other.moonrise &&
        moonset == other.moonset &&
        moonPhase == other.moonPhase &&
        moonIllumination == other.moonIllumination &&
        isMoonUp == other.isMoonUp &&
        isSunUp == other.isSunUp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sunrise.hashCode);
    _$hash = $jc(_$hash, sunset.hashCode);
    _$hash = $jc(_$hash, moonrise.hashCode);
    _$hash = $jc(_$hash, moonset.hashCode);
    _$hash = $jc(_$hash, moonPhase.hashCode);
    _$hash = $jc(_$hash, moonIllumination.hashCode);
    _$hash = $jc(_$hash, isMoonUp.hashCode);
    _$hash = $jc(_$hash, isSunUp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Astro')
          ..add('sunrise', sunrise)
          ..add('sunset', sunset)
          ..add('moonrise', moonrise)
          ..add('moonset', moonset)
          ..add('moonPhase', moonPhase)
          ..add('moonIllumination', moonIllumination)
          ..add('isMoonUp', isMoonUp)
          ..add('isSunUp', isSunUp))
        .toString();
  }
}

class AstroBuilder implements Builder<Astro, AstroBuilder> {
  _$Astro? _$v;

  String? _sunrise;
  String? get sunrise => _$this._sunrise;
  set sunrise(String? sunrise) => _$this._sunrise = sunrise;

  String? _sunset;
  String? get sunset => _$this._sunset;
  set sunset(String? sunset) => _$this._sunset = sunset;

  String? _moonrise;
  String? get moonrise => _$this._moonrise;
  set moonrise(String? moonrise) => _$this._moonrise = moonrise;

  String? _moonset;
  String? get moonset => _$this._moonset;
  set moonset(String? moonset) => _$this._moonset = moonset;

  String? _moonPhase;
  String? get moonPhase => _$this._moonPhase;
  set moonPhase(String? moonPhase) => _$this._moonPhase = moonPhase;

  String? _moonIllumination;
  String? get moonIllumination => _$this._moonIllumination;
  set moonIllumination(String? moonIllumination) =>
      _$this._moonIllumination = moonIllumination;

  int? _isMoonUp;
  int? get isMoonUp => _$this._isMoonUp;
  set isMoonUp(int? isMoonUp) => _$this._isMoonUp = isMoonUp;

  int? _isSunUp;
  int? get isSunUp => _$this._isSunUp;
  set isSunUp(int? isSunUp) => _$this._isSunUp = isSunUp;

  AstroBuilder();

  AstroBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sunrise = $v.sunrise;
      _sunset = $v.sunset;
      _moonrise = $v.moonrise;
      _moonset = $v.moonset;
      _moonPhase = $v.moonPhase;
      _moonIllumination = $v.moonIllumination;
      _isMoonUp = $v.isMoonUp;
      _isSunUp = $v.isSunUp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Astro other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Astro;
  }

  @override
  void update(void Function(AstroBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Astro build() => _build();

  _$Astro _build() {
    final _$result = _$v ??
        new _$Astro._(
            sunrise: sunrise,
            sunset: sunset,
            moonrise: moonrise,
            moonset: moonset,
            moonPhase: moonPhase,
            moonIllumination: moonIllumination,
            isMoonUp: isMoonUp,
            isSunUp: isSunUp);
    replace(_$result);
    return _$result;
  }
}

class _$Hour extends Hour {
  @override
  final int? timeEpoch;
  @override
  final String? time;
  @override
  final double? tempC;
  @override
  final double? tempF;
  @override
  final int? isDay;
  @override
  final Condition? condition;
  @override
  final double? windMph;
  @override
  final double? windKph;
  @override
  final int? windDegree;
  @override
  final String? windDir;
  @override
  final int? pressureMb;
  @override
  final double? pressureIn;
  @override
  final int? precipMm;
  @override
  final int? precipIn;
  @override
  final int? humidity;
  @override
  final int? cloud;
  @override
  final double? feelslikeC;
  @override
  final double? feelslikeF;
  @override
  final double? windchillC;
  @override
  final double? windchillF;
  @override
  final double? heatindexC;
  @override
  final double? heatindexF;
  @override
  final double? dewpointC;
  @override
  final double? dewpointF;
  @override
  final int? willItRain;
  @override
  final int? chanceOfRain;
  @override
  final int? willItSnow;
  @override
  final int? chanceOfSnow;
  @override
  final int? visKm;
  @override
  final double? visMiles;
  @override
  final double? gustMph;
  @override
  final double? gustKph;
  @override
  final int? uv;

  factory _$Hour([void Function(HourBuilder)? updates]) =>
      (new HourBuilder()..update(updates))._build();

  _$Hour._(
      {this.timeEpoch,
      this.time,
      this.tempC,
      this.tempF,
      this.isDay,
      this.condition,
      this.windMph,
      this.windKph,
      this.windDegree,
      this.windDir,
      this.pressureMb,
      this.pressureIn,
      this.precipMm,
      this.precipIn,
      this.humidity,
      this.cloud,
      this.feelslikeC,
      this.feelslikeF,
      this.windchillC,
      this.windchillF,
      this.heatindexC,
      this.heatindexF,
      this.dewpointC,
      this.dewpointF,
      this.willItRain,
      this.chanceOfRain,
      this.willItSnow,
      this.chanceOfSnow,
      this.visKm,
      this.visMiles,
      this.gustMph,
      this.gustKph,
      this.uv})
      : super._();

  @override
  Hour rebuild(void Function(HourBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HourBuilder toBuilder() => new HourBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Hour &&
        timeEpoch == other.timeEpoch &&
        time == other.time &&
        tempC == other.tempC &&
        tempF == other.tempF &&
        isDay == other.isDay &&
        condition == other.condition &&
        windMph == other.windMph &&
        windKph == other.windKph &&
        windDegree == other.windDegree &&
        windDir == other.windDir &&
        pressureMb == other.pressureMb &&
        pressureIn == other.pressureIn &&
        precipMm == other.precipMm &&
        precipIn == other.precipIn &&
        humidity == other.humidity &&
        cloud == other.cloud &&
        feelslikeC == other.feelslikeC &&
        feelslikeF == other.feelslikeF &&
        windchillC == other.windchillC &&
        windchillF == other.windchillF &&
        heatindexC == other.heatindexC &&
        heatindexF == other.heatindexF &&
        dewpointC == other.dewpointC &&
        dewpointF == other.dewpointF &&
        willItRain == other.willItRain &&
        chanceOfRain == other.chanceOfRain &&
        willItSnow == other.willItSnow &&
        chanceOfSnow == other.chanceOfSnow &&
        visKm == other.visKm &&
        visMiles == other.visMiles &&
        gustMph == other.gustMph &&
        gustKph == other.gustKph &&
        uv == other.uv;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, timeEpoch.hashCode);
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, tempC.hashCode);
    _$hash = $jc(_$hash, tempF.hashCode);
    _$hash = $jc(_$hash, isDay.hashCode);
    _$hash = $jc(_$hash, condition.hashCode);
    _$hash = $jc(_$hash, windMph.hashCode);
    _$hash = $jc(_$hash, windKph.hashCode);
    _$hash = $jc(_$hash, windDegree.hashCode);
    _$hash = $jc(_$hash, windDir.hashCode);
    _$hash = $jc(_$hash, pressureMb.hashCode);
    _$hash = $jc(_$hash, pressureIn.hashCode);
    _$hash = $jc(_$hash, precipMm.hashCode);
    _$hash = $jc(_$hash, precipIn.hashCode);
    _$hash = $jc(_$hash, humidity.hashCode);
    _$hash = $jc(_$hash, cloud.hashCode);
    _$hash = $jc(_$hash, feelslikeC.hashCode);
    _$hash = $jc(_$hash, feelslikeF.hashCode);
    _$hash = $jc(_$hash, windchillC.hashCode);
    _$hash = $jc(_$hash, windchillF.hashCode);
    _$hash = $jc(_$hash, heatindexC.hashCode);
    _$hash = $jc(_$hash, heatindexF.hashCode);
    _$hash = $jc(_$hash, dewpointC.hashCode);
    _$hash = $jc(_$hash, dewpointF.hashCode);
    _$hash = $jc(_$hash, willItRain.hashCode);
    _$hash = $jc(_$hash, chanceOfRain.hashCode);
    _$hash = $jc(_$hash, willItSnow.hashCode);
    _$hash = $jc(_$hash, chanceOfSnow.hashCode);
    _$hash = $jc(_$hash, visKm.hashCode);
    _$hash = $jc(_$hash, visMiles.hashCode);
    _$hash = $jc(_$hash, gustMph.hashCode);
    _$hash = $jc(_$hash, gustKph.hashCode);
    _$hash = $jc(_$hash, uv.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Hour')
          ..add('timeEpoch', timeEpoch)
          ..add('time', time)
          ..add('tempC', tempC)
          ..add('tempF', tempF)
          ..add('isDay', isDay)
          ..add('condition', condition)
          ..add('windMph', windMph)
          ..add('windKph', windKph)
          ..add('windDegree', windDegree)
          ..add('windDir', windDir)
          ..add('pressureMb', pressureMb)
          ..add('pressureIn', pressureIn)
          ..add('precipMm', precipMm)
          ..add('precipIn', precipIn)
          ..add('humidity', humidity)
          ..add('cloud', cloud)
          ..add('feelslikeC', feelslikeC)
          ..add('feelslikeF', feelslikeF)
          ..add('windchillC', windchillC)
          ..add('windchillF', windchillF)
          ..add('heatindexC', heatindexC)
          ..add('heatindexF', heatindexF)
          ..add('dewpointC', dewpointC)
          ..add('dewpointF', dewpointF)
          ..add('willItRain', willItRain)
          ..add('chanceOfRain', chanceOfRain)
          ..add('willItSnow', willItSnow)
          ..add('chanceOfSnow', chanceOfSnow)
          ..add('visKm', visKm)
          ..add('visMiles', visMiles)
          ..add('gustMph', gustMph)
          ..add('gustKph', gustKph)
          ..add('uv', uv))
        .toString();
  }
}

class HourBuilder implements Builder<Hour, HourBuilder> {
  _$Hour? _$v;

  int? _timeEpoch;
  int? get timeEpoch => _$this._timeEpoch;
  set timeEpoch(int? timeEpoch) => _$this._timeEpoch = timeEpoch;

  String? _time;
  String? get time => _$this._time;
  set time(String? time) => _$this._time = time;

  double? _tempC;
  double? get tempC => _$this._tempC;
  set tempC(double? tempC) => _$this._tempC = tempC;

  double? _tempF;
  double? get tempF => _$this._tempF;
  set tempF(double? tempF) => _$this._tempF = tempF;

  int? _isDay;
  int? get isDay => _$this._isDay;
  set isDay(int? isDay) => _$this._isDay = isDay;

  ConditionBuilder? _condition;
  ConditionBuilder get condition =>
      _$this._condition ??= new ConditionBuilder();
  set condition(ConditionBuilder? condition) => _$this._condition = condition;

  double? _windMph;
  double? get windMph => _$this._windMph;
  set windMph(double? windMph) => _$this._windMph = windMph;

  double? _windKph;
  double? get windKph => _$this._windKph;
  set windKph(double? windKph) => _$this._windKph = windKph;

  int? _windDegree;
  int? get windDegree => _$this._windDegree;
  set windDegree(int? windDegree) => _$this._windDegree = windDegree;

  String? _windDir;
  String? get windDir => _$this._windDir;
  set windDir(String? windDir) => _$this._windDir = windDir;

  int? _pressureMb;
  int? get pressureMb => _$this._pressureMb;
  set pressureMb(int? pressureMb) => _$this._pressureMb = pressureMb;

  double? _pressureIn;
  double? get pressureIn => _$this._pressureIn;
  set pressureIn(double? pressureIn) => _$this._pressureIn = pressureIn;

  int? _precipMm;
  int? get precipMm => _$this._precipMm;
  set precipMm(int? precipMm) => _$this._precipMm = precipMm;

  int? _precipIn;
  int? get precipIn => _$this._precipIn;
  set precipIn(int? precipIn) => _$this._precipIn = precipIn;

  int? _humidity;
  int? get humidity => _$this._humidity;
  set humidity(int? humidity) => _$this._humidity = humidity;

  int? _cloud;
  int? get cloud => _$this._cloud;
  set cloud(int? cloud) => _$this._cloud = cloud;

  double? _feelslikeC;
  double? get feelslikeC => _$this._feelslikeC;
  set feelslikeC(double? feelslikeC) => _$this._feelslikeC = feelslikeC;

  double? _feelslikeF;
  double? get feelslikeF => _$this._feelslikeF;
  set feelslikeF(double? feelslikeF) => _$this._feelslikeF = feelslikeF;

  double? _windchillC;
  double? get windchillC => _$this._windchillC;
  set windchillC(double? windchillC) => _$this._windchillC = windchillC;

  double? _windchillF;
  double? get windchillF => _$this._windchillF;
  set windchillF(double? windchillF) => _$this._windchillF = windchillF;

  double? _heatindexC;
  double? get heatindexC => _$this._heatindexC;
  set heatindexC(double? heatindexC) => _$this._heatindexC = heatindexC;

  double? _heatindexF;
  double? get heatindexF => _$this._heatindexF;
  set heatindexF(double? heatindexF) => _$this._heatindexF = heatindexF;

  double? _dewpointC;
  double? get dewpointC => _$this._dewpointC;
  set dewpointC(double? dewpointC) => _$this._dewpointC = dewpointC;

  double? _dewpointF;
  double? get dewpointF => _$this._dewpointF;
  set dewpointF(double? dewpointF) => _$this._dewpointF = dewpointF;

  int? _willItRain;
  int? get willItRain => _$this._willItRain;
  set willItRain(int? willItRain) => _$this._willItRain = willItRain;

  int? _chanceOfRain;
  int? get chanceOfRain => _$this._chanceOfRain;
  set chanceOfRain(int? chanceOfRain) => _$this._chanceOfRain = chanceOfRain;

  int? _willItSnow;
  int? get willItSnow => _$this._willItSnow;
  set willItSnow(int? willItSnow) => _$this._willItSnow = willItSnow;

  int? _chanceOfSnow;
  int? get chanceOfSnow => _$this._chanceOfSnow;
  set chanceOfSnow(int? chanceOfSnow) => _$this._chanceOfSnow = chanceOfSnow;

  int? _visKm;
  int? get visKm => _$this._visKm;
  set visKm(int? visKm) => _$this._visKm = visKm;

  double? _visMiles;
  double? get visMiles => _$this._visMiles;
  set visMiles(double? visMiles) => _$this._visMiles = visMiles;

  double? _gustMph;
  double? get gustMph => _$this._gustMph;
  set gustMph(double? gustMph) => _$this._gustMph = gustMph;

  double? _gustKph;
  double? get gustKph => _$this._gustKph;
  set gustKph(double? gustKph) => _$this._gustKph = gustKph;

  int? _uv;
  int? get uv => _$this._uv;
  set uv(int? uv) => _$this._uv = uv;

  HourBuilder();

  HourBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timeEpoch = $v.timeEpoch;
      _time = $v.time;
      _tempC = $v.tempC;
      _tempF = $v.tempF;
      _isDay = $v.isDay;
      _condition = $v.condition?.toBuilder();
      _windMph = $v.windMph;
      _windKph = $v.windKph;
      _windDegree = $v.windDegree;
      _windDir = $v.windDir;
      _pressureMb = $v.pressureMb;
      _pressureIn = $v.pressureIn;
      _precipMm = $v.precipMm;
      _precipIn = $v.precipIn;
      _humidity = $v.humidity;
      _cloud = $v.cloud;
      _feelslikeC = $v.feelslikeC;
      _feelslikeF = $v.feelslikeF;
      _windchillC = $v.windchillC;
      _windchillF = $v.windchillF;
      _heatindexC = $v.heatindexC;
      _heatindexF = $v.heatindexF;
      _dewpointC = $v.dewpointC;
      _dewpointF = $v.dewpointF;
      _willItRain = $v.willItRain;
      _chanceOfRain = $v.chanceOfRain;
      _willItSnow = $v.willItSnow;
      _chanceOfSnow = $v.chanceOfSnow;
      _visKm = $v.visKm;
      _visMiles = $v.visMiles;
      _gustMph = $v.gustMph;
      _gustKph = $v.gustKph;
      _uv = $v.uv;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Hour other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Hour;
  }

  @override
  void update(void Function(HourBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Hour build() => _build();

  _$Hour _build() {
    _$Hour _$result;
    try {
      _$result = _$v ??
          new _$Hour._(
              timeEpoch: timeEpoch,
              time: time,
              tempC: tempC,
              tempF: tempF,
              isDay: isDay,
              condition: _condition?.build(),
              windMph: windMph,
              windKph: windKph,
              windDegree: windDegree,
              windDir: windDir,
              pressureMb: pressureMb,
              pressureIn: pressureIn,
              precipMm: precipMm,
              precipIn: precipIn,
              humidity: humidity,
              cloud: cloud,
              feelslikeC: feelslikeC,
              feelslikeF: feelslikeF,
              windchillC: windchillC,
              windchillF: windchillF,
              heatindexC: heatindexC,
              heatindexF: heatindexF,
              dewpointC: dewpointC,
              dewpointF: dewpointF,
              willItRain: willItRain,
              chanceOfRain: chanceOfRain,
              willItSnow: willItSnow,
              chanceOfSnow: chanceOfSnow,
              visKm: visKm,
              visMiles: visMiles,
              gustMph: gustMph,
              gustKph: gustKph,
              uv: uv);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'condition';
        _condition?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Hour', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
