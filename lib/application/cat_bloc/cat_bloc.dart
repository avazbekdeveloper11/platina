// import 'dart:async';

// import 'package:bloc/bloc.dart';
// import 'package:platina/infrastructure/models/cat/cat_model.dart';
// import 'package:platina/infrastructure/repositories/cat_repo.dart';
// import 'package:flutter_easyloading/flutter_easyloading.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'cat_bloc.freezed.dart';

// part 'cat_event.dart';

// part 'cat_state.dart';

// class CatBloc extends Bloc<CatEvent, CatState> {
//   final CatRepo _catRepo;

//   CatBloc(this._catRepo) : super(const _SignInState()) {
//     on<_GetCat>(_getCat);
//   }

//   Future<void> _getCat(
//     _GetCat _getCat,
//     Emitter<CatState> emit,
//   ) async {
//     EasyLoading.show();
//     final res = await _catRepo.getCat(_getCat.animalType, _getCat.amount);
//     res.fold((l) async {
//       EasyLoading.showError(l.message);
//       return;
//     }, (r)  {
//       EasyLoading.dismiss();
//       return emit(state.copyWith(catModel: r));
//     });
//   }
// }
