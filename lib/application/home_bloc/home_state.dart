part of 'home_bloc.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    @Default(null) PopularModel? popularModel,
    @Default(null) PopularModel? popularModelPinned,
    @Default(null) WeatherModel? weatherModel,
  }) = _HomeState;
}
