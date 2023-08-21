part of 'home_bloc.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    @Default(null) PopularModel? popularModel,
    @Default([]) List<PopularModelResult> businessModel,
    @Default(null) PopularModel? popularModelPinned,
    @Default(null) PopularModel? procurmentModel,
    @Default(null) PopularModel? articlesModel,
    @Default(null) WeatherModel? weatherModel,
    @Default(null) PopularModel? authorOfferedModel,
    @Default(null) SearchModel? searchModel,
    @Default([]) List<CategoriesModel>? categoriesModel,
  }) = _HomeState;
}
