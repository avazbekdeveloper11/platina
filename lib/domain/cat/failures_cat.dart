import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures_cat.freezed.dart';

@freezed
abstract class CatFailure with _$CatFailure {
  const factory CatFailure.invalidCredential({
    required String message,
  }) = InvalidCredentials;

  const factory CatFailure.networkFailure({
    required String message,
  }) = NetworkFailure;

  const factory CatFailure.unknown({
    required String message,
  }) = Unknown;
}
