part of 'home_bloc.dart';

@freezed
abstract class HomeEvent with _$HomeEvent {
  factory HomeEvent.getPopularPosts() = _GetPopularPosts;
  factory HomeEvent.getAuthorOffered() = _GetAuthorOffered;
  factory HomeEvent.getArticles() = _GetArticles;
  factory HomeEvent.getWather() = _GetWather;
  factory HomeEvent.getProcurment() = _GetProcurment;
  factory HomeEvent.getBusiness() = _GetBusiness;
  factory HomeEvent.getCategories() = _GetCategories;
  factory HomeEvent.search({required String text}) = _Search;
}
