import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:platina/infrastructure/models/categories_model/categories_model.dart';
import 'package:platina/infrastructure/models/popular_model/popular_model.dart';
import 'package:platina/infrastructure/models/search_model/search_model.dart';
import 'package:platina/infrastructure/models/weather_model/weather_model.dart';
import 'package:platina/infrastructure/repositories/home_repo.dart';

part 'home_bloc.freezed.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepo _homeRepo;

  HomeBloc(this._homeRepo) : super(const _HomeState()) {
    on<_GetPopularPosts>(_getPopularPosts);
    on<_GetAuthorOffered>(_getAuthorOffered);
    on<_GetArticles>(_getArticles);
    on<_GetWather>(_getWather);
    on<_GetProcurment>(_getProcurment);
    on<_GetBusiness>(_getBusiness);
    on<_GetCategories>(_getCategories);
    on<_Search>(_search);
  }

  FutureOr<void> _getPopularPosts(
    _GetPopularPosts event,
    Emitter<HomeState> emit,
  ) async {
    final res = await _homeRepo.getPopularPosts();
    res.fold((l) async {
      return;
    }, (r) {
      PopularModel? model;
      List<PopularModelResult> pinned = [];

      if (r.results != null && r.results!.isNotEmpty) {
        for (var i = 0; i < r.results!.length; i++) {
          if (r.results![i].isPinned!) {
            pinned.add(r.results![i]);
          }
        }
      }
      pinned.sort((a, b) {
        return DateTime.parse(a.publish!).compareTo(
          DateTime.parse(b.publish!),
        );
      });
      pinned = pinned.reversed.toList();

      model = r.rebuild(
        (p0) => p0.results = pinned.toBuiltList().toBuilder(),
      );
      return emit(state.copyWith(popularModel: r, popularModelPinned: model));
    });
  }

  FutureOr<void> _getAuthorOffered(
    _GetAuthorOffered event,
    Emitter<HomeState> emit,
  ) async {
    final res = await _homeRepo.getAuthorOffered();
    res.fold((l) async {
      return;
    }, (r) {
      return emit(state.copyWith(authorOfferedModel: r));
    });
  }

  FutureOr<void> _getArticles(
    _GetArticles event,
    Emitter<HomeState> emit,
  ) async {
    final res = await _homeRepo.getArticles();
    res.fold((l) async {
      return;
    }, (r) {
      return emit(state.copyWith(articlesModel: r));
    });
  }

  FutureOr<void> _getWather(
    _GetWather event,
    Emitter<HomeState> emit,
  ) async {
    final res = await _homeRepo.getWather();
    res.fold((l) async {
      return;
    }, (r) {
      return emit(state.copyWith(weatherModel: r));
    });
  }

  FutureOr<void> _getProcurment(
    _GetProcurment event,
    Emitter<HomeState> emit,
  ) async {
    final res = await _homeRepo.getProcurment();
    res.fold((l) async {
      return;
    }, (r) {
      return emit(state.copyWith(procurmentModel: r));
    });
  }

  FutureOr<void> _getBusiness(
    _GetBusiness event,
    Emitter<HomeState> emit,
  ) async {
    final res = await _homeRepo.getBusiness();
    res.fold((l) async {
      return;
    }, (r) {
      return emit(state.copyWith(businessModel: r));
    });
  }

  FutureOr<void> _getCategories(
    _GetCategories event,
    Emitter<HomeState> emit,
  ) async {
    final res = await _homeRepo.getCategories();
    res.fold((l) async {
      return;
    }, (r) {
      return emit(state.copyWith(categoriesModel: r));
    });
  }

  FutureOr<void> _search(
    _Search event,
    Emitter<HomeState> emit,
  ) async {
    final res = await _homeRepo.searchNews(event.text);
    res.fold((l) async {
      return;
    }, (r) {
      return emit(state.copyWith(searchModel: r));
    });
  }
}
