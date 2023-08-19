import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures_home.freezed.dart';

@freezed
abstract class CoreFailure with _$CoreFailure {
  const factory CoreFailure.invalidCredential({
    required String message,
  }) = InvalidCredentials;

  const factory CoreFailure.networkFailure({
    required String message,
  }) = NetworkFailure;

  const factory CoreFailure.unknown({
    required String message,
  }) = Unknown;
}
