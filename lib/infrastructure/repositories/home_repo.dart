import 'package:platina/domain/home/home_facade.dart';
import 'package:platina/infrastructure/apis/home_apis.dart';

class HomeRepo implements HomeFacade {
  final HomeService _homeService;

  HomeRepo(this._homeService);
}
