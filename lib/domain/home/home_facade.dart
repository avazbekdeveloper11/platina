import 'package:dartz/dartz.dart';
import 'package:platina/domain/home/failures_home.dart';
import 'package:platina/infrastructure/models/categories_model/categories_model.dart';
import 'package:platina/infrastructure/models/popular_model/popular_model.dart';
import 'package:platina/infrastructure/models/search_model/search_model.dart';
import 'package:platina/infrastructure/models/weather_model/weather_model.dart';

abstract class HomeFacade {
  Future<Either<CoreFailure, PopularModel>> getPopularPosts();
  Future<Either<CoreFailure, PopularModel>> getAuthorOffered();
  Future<Either<CoreFailure, PopularModel>> getArticles();
  Future<Either<CoreFailure, WeatherModel>> getWather();
  Future<Either<CoreFailure, PopularModel>> getProcurment();
  Future<Either<CoreFailure, List<PopularModelResult>>> getBusiness();
  Future<Either<CoreFailure, List<CategoriesModel>>> getCategories();
  Future<Either<CoreFailure, SearchModel>> searchNews(String text);
}
