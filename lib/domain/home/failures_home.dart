import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures_home.freezed.dart';

@freezed
abstract class HomeFailure with _$HomeFailure {
  const factory HomeFailure.invalidCredential({
    required String message,
  }) = InvalidCredentials;

  const factory HomeFailure.networkFailure({
    required String message,
  }) = NetworkFailure;

  const factory HomeFailure.unknown({
    required String message,
  }) = Unknown;
}
