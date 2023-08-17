// import 'package:platina/domain/cat/cat_facade.dart';
// import 'package:platina/domain/cat/failures_cat.dart';
// import 'package:platina/infrastructure/apis/cat_apis.dart';
// import 'package:platina/infrastructure/core/exceptions.dart';
// import 'package:platina/infrastructure/models/cat/cat_model.dart';
// import 'package:dartz/dartz.dart';
// import 'package:easy_localization/easy_localization.dart';

// class CatRepo implements CatFacade {
//   final GetCatService _getCatService;

//   CatRepo(this._getCatService);

//   @override
//   Future<Either<CatFailure, CatModel>> getCat(
//       String animalType, int amount) async {
//     try {
//       final res = await _getCatService.getCat(animalType, amount);
//       if (res.isSuccessful) {
//         assert(res.body != null);
//           return right(res.body!);
//       } else {
//         return left(Unknown(message: 'unknown_error'.tr()));
//       }
//     } catch (e) {
//       if (e is NetworkException) {
//         return left(NetworkFailure(message: 'network_error'.tr()));
//       } else if (e is UnimplementedError) {
//         return left(Unknown(message: e.message ?? 'unknown_error'.tr()));
//       } else {
//         return left(Unknown(message: 'unknown_error'.tr()));
//       }
//     }
//   }
// }